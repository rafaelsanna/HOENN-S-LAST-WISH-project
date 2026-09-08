#!/usr/bin/env python3
"""Party Menu Shiny V4 SIMPLE — pokeemerald-expansion 1.13.3.

Arquitetura revertida para a V2 estável:
- nickname continua sendo texto normal da janela (NÃO vira sprite);
- sparkle continua sendo o mesmo OBJ 16x16;
- SWITCH continua com a lógica já validada.

Correções simples:
1) a HP bar é forçada às entradas canônicas 9/10, então a cor do nickname em
   índice 15 não pode pintar nenhuma das duas linhas da HP;
2) sparkle usa priority 1, igual ao held-item icon, ficando atrás dos menus.
"""
from __future__ import annotations

import argparse
import base64
import hashlib
import json
import os
import shutil
import subprocess
import zlib
from datetime import datetime
from pathlib import Path

BASE_SHA256 = "aa7fb6dc1050ef15299da94088d26d138e64c3a77dc1387b2d3f0c40a3b97f77"
V1_SHA256 = "7127f9aa3430cc5ba5fa825a73f334550a03fbc9904cb505c3bba60ea4e49c5c"
V2_SHA256 = "9c53aee0a75f80eefd48ae8f2b0eda964ea383866a8953e00b864e7e2d60459d"
V3_SHA256 = "fa21e71f9d4fa585e4760110557c65df4f63099b3cdabc60ae745af2eb65ab04"
V31_SHA256 = "30a54704fcee15151d00b4af9f57e41ebc37d26371a7ec52c8500b2dc35e4153"
V4_SHA256 = "4d40830489b0d622d65d3c00d1f1ea595de0d340271208066d290af0bcc06029"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"

C_REL = Path("src/party_menu.c")
ASSET_REL = Path("graphics/party_menu/shiny.png")
BACKUP_DIR = Path(".party_shiny_backup")

C_PAYLOAD = (
    'c-ri};d0wJvM~BTPr=!(GixWZBguB`#FLzoWZBk<Ea^z{WU~2kRkTFQ+(@LBq+)w#Q+2EEE8I7@KW?4p*f+UPa=RM<36KCu+0M-'
    'F`OZ`(5lNuYXfzt#K%@JQt~Xt*XO8uU`NF@l7rQrqc=pHm-PB)R-%o7MU8?Vw_F~~r)pu8R6fGRxI}HH-Vd{HP;4c<V5Nf~AukR)y{J)Oeg|>j'
    '}MNV*SPxbAt+%JX?_kq21XL;WySN1&heV!%`G#*Ck%b6Y7sW%Q#aTPdWs*8>t-cP1Cb_#&=)$yW977TmuU;V|IMw6xg)mg%Gx`@93O8MR-oH|~'
    'r=hv>Ym<fVU?61&3pex~AUqcJJFW9K={c2&~J3$V}a2hy{mjgLmIaAkOgt~9Hjvd`NI=D-'
    'Fm3q6FK^wYvlcgJ`*!3FN&c6k`y;b^407P=(OP1^AtMw#s<|#zyfxWtMr>VEZnx2j0VJ{|O6u9181JaG0W%kVkMt7}wy$(}DFtt~yb{DSqCHrO'
    ')T(8q}IE@Ot@ltOxSm2w<jk8!~rYwEoBkBIlnWeu*Knj>%SI&+7)%8;Y3ak~}`oSVqYh^E-D00#-'
    'gXmsEAkK&B;avG&oTcw+UryYq>C0c%%a#6182N!ccP8O|m>Ijc%zC-BgL}^UY8hZ4oTC}`1rc%M-%hv~($x&7wg-dhXr~fXa98Pf{@P2CG+YI4'
    'nxY|0+(<)FBh#`EDF%q_FvWP0a~EabOm1Co=HI411okY2)!IWc1-'
    '_r6v93A{BXq)x!k4;bDE)OJrnsq?EDFQ?LRqOOmGFZlig*vWCAwcZMo=`j3!1|+#*c`F@uO+NBqf6RmFZLHX9k+E6*K1<fL&U@KC|Gzi+1mFGP'
    '=CDXbeAAq&FWr<JP(K;<VrG_CK_Tnpcxid#rmsY>zL8J>8efo?4~V=(XD2n)IeKZeK``XPuwh(&M=CzMU>|(f>L7uF>hHtEJuz+l`Y9CUuz-'
    '=bcj-*HOE7GU;E+uiCw_LYQ73U#avQ_lIqz*|W|_tu-DtPTIBf3mKJhe>75X9XGoDvq|%^+tj=Udh|4}KQy36y)(_1(_!c2tgZXd&;hzgu|w;;'
    '(K~CyAP+CHZyU`{w=<S0a@uKkPiWLe&%PZ$d-n3B)j0_*n12>150*W}RoGg%VHCm(JF@K6%CQ6M_Qvrn+oB0#f!wy-'
    '&<dReOhacTGj^jj?(};j7>pk8lXxTZcKj|G<@l8{(BiE$)=3NUaL3h?5szQ7X*TKix~akm--'
    '<U0n~FCo%ZRtcB&lWwou2MJvOhK?@lg!BKki?MkySta`Quq*c+#G<E}JQM+4-'
    ';gqKJV^0Z9_*zs1#&N2K8$G=}4klV<;yNw<AEp0xVi%M0E}@@d#PJ2!o6|L0|+8-GhdA2-'
    'e>gZ}$=v(fEZZ>?IrTCHS0Ohy;*ck+HTZj3KsEL+eE2Jw%e$imuBU(b=<k^I)d0l-'
    'T>GL!~@%&6UMx5n)g1ZZv5te<|es@s}!r;Sce6yxP;x^m+_=k=sqU03envODff8r^YHZckT^0R!QYl-oD8+dmyQ`<<>Rcc3c=6X&Aev*dof(v`'
    'dHU5-R|dAY;wgn%SYPCCQMN&f?bR?B|79I)y;ns3A=__3b-hTKK<>gsUPM8cuA_NvwDfu;Y5=(oq?wzZ|!d0|!WYB07a^#&-'
    '(c5tb;MmMf^52A01cA_-'
    '~F<5(bS9@hKHN!&l#AC+E;@%1zuq;9nmZ80L5Y)B54tB1=76$nlM4+61v20dix&{?^X^ohUYmG=#tyov<$hv_do^O%fY54)dVJg>77~L-%C=-'
    'NG$_boZrIT!Ya4~_u;o*I^jjX*_O^qNcF>e1do}8YsL8u*=%Z$z&Fpe;z@ByZ0AI24cPtJyok3_Hcj<cdZoeu!fz``W})(FtEeb1fR3u_hl5iJ'
    'K6w?!<VTHpe$&>*+mYgj%QJrEq4?TWf(5m^Bm+OR<LnR7?0k`LJW*VHnQ)(ZUFa2L?Lf%RwM*r3ZHG|?ifRy(kqJJ7&F_p1XV2IjWAu&;ooVwG'
    'b94rqVzaM0kjGY`lBND=6KFljb`8%Zz%QvnfQ>x*0t262%Zh?x+LxT!_jp|w7;LgF`Scnq3-'
    '%U}3G`02Ct_8Av_3Eg20>EX!2>LyE1Wk3xd*eF)S%0BQz_aFc7KmH%zn)w#$q893+$aXMn5is8xj8m{Mt(hA*F1!Gpb!yLSD_r;y)&V=w2VQOe'
    'b!{(p5#k+)<t?;M!6xfE*AYyqTXz=SY(GD;cA(=RDC(;_R1<6fhC3)Q($<w9%<OHfe-'
    'HI}^|8N#N-wCA^j}i{%69MM>KT#}S{>+C2i`$nKXH0={@nijsh-gG*IM<UV%2KjDwYK}Q0J=F|M!3X-<A{pb?pFfR;*q-'
    'gkrDdVl^tp$YV>u4isQ@6R-'
    'mX*q#B{YX#W83D|1|*nt8J2OR0U^K}0qxUTDcfeB5#YrTx+*c7=JXVMZ(DJX|U$M}T0B#1Yhq+s=eSerRPg%!uSJp+;X)nWLnQg!JD0RxG!v|@'
    'ADYJzOAn6)2*9JXgKZ_z@JWwCX2Pci^OoOeHrpsn^Dv=TxqyVvVz9XOvpS3u-'
    'iWN9LXBvuG>*Rz0<D0^57tPGR%2$0Doltx&`gE<V0jP)W^h5eP|IWs|vz6V`up1r*6#C;EVJF{I*O%S8(Tg93?AhrUTOlbV`XM~5f6Y+`#Jdmj'
    'Y&|rz`Iko$wLmx)L8dg5Slm?c`D?Xprur_*N6f_t1^viMl>Ixt0$@2_W4C%=ZzSNROpl&er?S)z(d0M)&<YD2?Zz36R1QPu?(H;p;LXnVtChMw'
    'Prk=Mi+LM#^X#<olkU`aop-AJRJwE?98k@d1FNbHBy_1io?-'
    '!ku9;v^h_r@~t|FF?LsTi?r4<`LqyU{b1X!UWmF?}8ON9_;&z7c+>chWiQo4$@Z-Ji{{2Mw@=x)U&U-kXYa8(;ySz+!mO$suE-'
    '3HCtuvTdeg&scfTZU{p%`|+%ArfjQ!iBOSm^y@RRPY*=N<ixqQ*NX^NX#DT3HQD+@voUJ_Vf(nSYGdg{H}@g0OI3-'
    'h%G7PHgE{CS_flQtxH45Q+?j{-M5+orSf*xs=>+y-Cik^{G3=g{se1yGygzkpk7`q0V%;)zTRsS{fH%wPB4-'
    'cF)E)YvbL;yvskg}YWvX_(nLGEDW?@R4^~=;9xr?tUlySn8LU~|^k+T@Ul8W`IF3zJeRlBg1;Tj?J7N*%rsb-'
    't@)qQiZc4U@<*;kIGJTU`ARh*ZlI_uceo479PEKb`pb<g~m8AV;3)mSxC_c{BO0wGkv%;Zm$!cWHKAwk+86e=bFV)6KF0w6?#5rSA=j1Yu?FhY'
    '<QpwBu8LQWVV@a4%&1}-luW;%)m?6ZlETxb|UuoX_?0ln-'
    'n))#A_k&Z%s7$LA#G6w@DMvV2@I+|0Ti4tRdX{G(Ft)GY!BMfCJ{;Yu^<cgUe#X9}j#E)FM<nUuJo>7*bA3ZZKlFay=Q=8<Bu{w&4+{RJV#OCq'
    '{ZHTXK=;B^M_vMh;FSs!=1Ji=-'
    '9H=Hqo+xYGPZv%fAruQEqb&L#HT6MiYMv7K&!oa~#%tf%U~Q2J8@gbzg7wLa(!gG>La~{c%X<ckO<_p3=k%zR@h#t}$Nz?B&8=F+f<N``3O&`~'
    'XT{n}p7tu%K7ZO1PfGoLcvZ0uc$rrf3;rDOr`MHQwNewXYkQU2ex-'
    'I8f3yziBZ2!?Vo6S;UMJM|67=c`BKw4_XzPHGJW8PsnBv|IFLNaDVaNhxKwp5Xy{aJkqHG<y^{P@oC`3Nd2GYpyDRe(j=zgfs{YX$)ssEage<k'
    'p%S0uXE4k|}Ldhv9m3_~6IQKz02;I8T+8otSJ%0cq9pAdhKFg?oh&8q}QEC3Xadko}{83lg>v1>_J>+t7wA^x!zq(Oa8VflTfBd-'
    '*eKg^OISt%j?0U{fd{)l+IDxrRu^b5uXsef3Ax~zZcvENg$KTxngRIoqNVJ{ILaokg|f2CsoI+?$KeF>%)s-'
    'K4Campq`E{(z=^`oA!`~meb&GORN03RGBJqOYPlOIYfzn4ty`aX4}T8Md~bn2(;o-'
    '$qcmFfCQnXZT0>3WplekgIt0m+&@3He$gdJuVF|6=5YzN?q;dy0fVP-OaHA~ZE(5;w~eWDiM9#<*5Vwj4?#evfdCdva8%7xTMNwKWpHu1NTOMZ'
    'zD*vygLsTEZX7a}&v2lel|NlJEye=7iY+?<(+nA?k{jUq;AFVqM}IprVHKz$XU^pU5i|TU})~*-!A_s}bq<3-Qlb7zHCBiFsm-'
    'n0ex*U#WkjNE^;BdkVWG^5zhyX)Neb%2&&9k7VMMS*7-'
    'sb?H^YP8tR}AO?CJ^S+|bR8{QviQ+Yhf%Yr)qY}$(Z@k$WwMVE*^Wc!Wkw*L|8Jj~|qh3ph?@Rq4#FKsi;s?}^BF<-'
    ')onFe<O;Y|qnE|h|t1F6eMX`CUC^o3ORHZ3!kgyY?T`jY`GNV$DcvV5XrXXHRRM%JZq#|C!1xcoAwX&xyNc)lsc32TztiMKuMq(7%m_^S7Iu!#'
    'WVu2@S_m+R_8O>R%=UdKQ6xjTnZe>p$%cUbIv@+Jqq$WGWx^TSpF+G2^7i%nQ&76gM<pg$wNAKZ{9XOd&buP6*bWFyLv+AUOdOB*487W@v=N7K'
    '1g%8YyVMQ2q`n{z5t5-RN8!-'
    'Q6(60{jaaNA3t9J)`crN>=(Vy~>PuJR~TH`+z_9CfOOS>O*Kd_SRU&ieo_4uN3)@iX8_K)^k2ZslH#g*cQYR|OTppOIdZjk@0)ioz6=-'
    ')6Q{y_FP2d+!)m=j#`_0jGIC-qx5z8^XR<|&>WFtpD5plMkRYtVoHkN>*p_X@y}^&1WX=+&LH3;t^t46O0E-'
    '}`3$I*fl(cSlwkkYhix7fR1w)?O7<Y)q$47!IbX{q0{zV<3t^qS0!#M<Z*{Dx%K<$n#0s;NrlVac^4P;zN<99Vjj-'
    '2<2CUKZ@+9^5MKQZdbG(Ln*($R--rRwj0A9Ii6O;yIy~sdEMxuYw*X(`(FRUD6jaWGn%x|&eAS~Frhw>*SqD;LaVxSK!@k<a<y=$ZiL=IVd&0L'
    '1V$k1?CA}6X$2<x$A6Jut7mmQH;VbU>EAgaf&S2emPcnmoy5;X94024FT762yY`3Zq|P^0zWVOW+IoJqaHG?;H{IS^gS1cof93m&qiufBePqqt'
    'C39W~Kh^g?C$F7wiUWrJH<_1Xf0cRn0X=jwZ_gces;=umhuz3o2<Id_{DN3pcyWONy0BfZWiJ+2_Vf#^8EzyVcsqM_Yf7{C++JM2sU>e0b{LJg'
    '<M3$VM{o9yY1A%5HYR}+tpg8#vHdXg6(Q&2xsMJT3+VLA05P|&oZIM@JT?5qdg+C66YSzfXV&t)Yd2V;{I~+_-'
    'W(ohi`d@OS?EfD#0c#<6nRtIk7>s)RCH#a_V{oB;-'
    '`4I!6HY(sg1~Z5zxlsUdPr8Yu~zNMeybUJagyJ7nX3jg`ec1`ody<@Vf#u`P@04zn<S%c)KHZV1wautXm&F1gCcBSX-'
    '}!v)%Tw1(Vxdz#}j_UKYB>%Ud(_xA85QCk^uO4tGVDn8$bc>7wxqx`i^=a6siCVYsAL-06-'
    '7E57G07Pci$gDfAtUJyGVIv`fPYgVlrKoaKRR`ss-s>(ExZJLqL?3z4(aCbfK@HwE0ha#43U9T4la@UlB)T=5GyjuyHMgpKi-'
    'Z%^Qi$l2B5h27{XDSNY&36_kAwqOX<o7o$w&<aPBY<7GUVU022zar_jTp8hIlQSqW3E8r&Z6Y_NOuxrcNKWsTwh<qBG^2e47%enNe=5J4Ab8n|'
    '9T6`Y;$6V<OdVkpK7l@ADcuApOo2s-'
    '?Zqlp1b1bu~Y?5O&R~Ud?aj!yW<xi4@Z2W#P86JF!M4*zsAhl6`xkw;;<O4!{oKt2LCW@T);2|p;)fy4J<3;hGh~_(3kAHw^r}6+dY1kQ{S2=K'
    'ViMAemgGFC{R~!kJg5`v21msG?i}7&#v#r%<-'
    '{g1zwu5j;=?vT1edh3EGwfF?u;E<pKCyNZt$Iqk5fLrkEnx=L0{C5I9LW3AC{Xz`@T$6zsKh2dc*wIZFptc<V;f8x-'
    'ek@kJpY<^rp0fth+or*5Z#zob5rXgeMDd*cqd=*B*x=5fb{CALBrQ%)%Dn1v|^wA^A`bzFUjXIoL>rXNNAGAWPN9T0Ef>~Q~Fa_x=mVD3an)Gx'
    '4Xa1Zs!htXp5I(*5OG)r78B}a7fFI<31#A>jmm941OdUb0DGpHZk&_`T+(R~tsUlCI1kB$Ds3*VbN<itLOHz2GLr5%u#Am--oS7(Qzh;EG>n_W'
    'Y<hqeo%6iGg&4vi#9r8xNRThFcfXQIXsh_nQwGXzb+1(j~@_)8}OyY|)&la<B=wNBi)We()aHA>KR@D(rw<d!Qx0Be{i!tOx{AJA|OPyrTepIw'
    '<r?qyV%g3<|_cIZxNro_CnMQ+dOD+H+Ggw|=J3uX*?$457`$kUj)cR*YeEV#slu<$HUDV44huu<0$kcouw61{Iz$eeMSWJE%fZXGZVUIzi-'
    'DIZ$%rK&C_3tJZ>RIT@fS1aH}^+4c<=&L^>&*_S_zjH`M=(%2D4!}O>35KEXumS1<MHYFp?bP*@QmBOCO@Wo;A^Q(n)-}w1aaRon!2kyxgp-jP'
    '->;m!R+G|QHtR~2Wr|a|vPh>KIfF7uMw#oUrt-'
    '1UE>*&JIl@~J{Zh5mvcjs<)j?XZK?4F!;aRJHfeIu+;^xjA=P|5HttK;g1Wwxt6pjT|7&@VoSYBKBE-_shZ|f(SzGPaI6hp?Dz(i}wvTXls1ha'
    'Pmb0)tM&>{TKwLJ?!+wA)Oss}=NPEilE#lbXz8rpW?-yoW<qpk3W*3P6Vk+HdU7qdJ$nre?K;p9u#VM~s-'
    'I62nOXe^k%0<6LA(46`{Xkn%%l2uJ{&+lCK9B1atbk(}PJxeXHxVB?`U2%M$Dn9l#g<<ZUIZ?`A2XD+6N2DXI$phhzKl0bXl=)VmCeN-QNv*)E'
    'A!;u2ev2SgQj2{3b;BsN$czi70qHv4SgjWK%C-)#qANUft}%*22E2B#TeJ+Oh>FaI*H1{mr7E1eGbiB<M&273Gc78u1>PlyOLM`-'
    '*a%676a^|J_DQP#NnqcWZ>(9LDEm96LPIbS?E(=4^YAvmL_QS8uR<_^an_(nE3=Mw0m{nU)^`D=aek`^W|~+j^HPPtK*^o7SV{<l^^s|g%B6~+'
    'k@-'
    '{rt4tZOeUt40m!yGXM~)ye6NDj3V8f7kvM6T==$M3{vJIrvP7`mUWGy36akZSNqn#;p8aS+H1E0d^Xd7h(WcktZSNB<9CvJ$LVK_Y6bw9Bq8<e'
    'Yy^&)cFT9h*wKr10~w3ajOa%v`Td%0rDPu?Uqq6Sk8<cCKhqI9Jei%7Lmm3TXIlUg4@LM}j}#S?mix?D47QMS%O;lY(z0l+vmXW0C&&UhX9K|g'
    '4VkXIQXd03Px*y9&z<3VSyalA{jK^7`0_^lgf`sHcip3(g7xic{Kyzc=2eDEEBUf6fv1@8F()P#-Tmf#zQ1y}-'
    'J!*d2w{7axHbSx0j*=4XSzmEMe9_k?9vlEuuD@Ef2!J8Dw_E;%yY6mEGLN^epg=9~ao#7<U8$cTSr>-'
    'LXWH^8(f@V6R{DHP@Ds)=GE@79OQ|19FJ9z|YE4<$i1a>|k-S=iyVOKtZ$5#emOZKDWMA;(T9*h+X3xiM^jH+Sab#$fzz#HIRSe9|qiNQoR-'
    '>cK8m7lpPe6bW5+jt<}s`{dVyE({_w9~IcG=~$}o$`?1wcfX`*B(2BqCF)%aPe@ri1yQFU`*i|PP|iTU%>>o_BjxCG&OTk^Km@#X<>&$0Yyy2-'
    'yT4jI<yaX!wzt`al_8EXwxomVfx^OZ`xkMaws+!{-'
    'uZOfpRu)q@Dz1!n7N#FnjgVqyIo8W8HGZj+pG=%fd03Dyhb$3XekJay9!NU=wpajtZi;*Vn>=8DTJ4G4#!K6vZRP90)Y3wPI+nDq-%X31W-'
    'G2KIL_Xqk;;+-!|2&{0dvgm!t18=kwwe)3}+c0vVwsV^<#8}R)tgpesM?eruT%IU(Mhnb>G36YATqYc_s{Q#B<j5p$5yQrBoK#-'
    '`~vD8Xuh7{pjcg(KQnRev96ZfLw%|=cH)XkQbI1n`jkSDZ7uNxgyY+CCe^n<a_hh10f-1cS*hnY0M)QnA-VvyBbQia*@xO`aD^0<yCTu%eeY6n'
    '|tL3{#o@e_x5`+E=thOIa0<g({S?fHC5)v>rK<U4Z7_nv=yezB#|#$qIg4*F#<8(dcq*&W8^a)pNY*yn>v{*pSv>IU{2_=ju4>C(YHnP(Ep+Cp'
    'crFkO(ISf(T{HvOPP`4OGNN<~5~%r;H{_=*N)qL6E5By}DtaB(I0BqnZp?*f2@H{)9$Rer%yY4S4%9iXK<byu`oK7hHkip+K}mwAF+KRRL0S4t'
    '-uG;rXlJtfx;R%=AzTFnDn1X|@Sjt~_yZT}HmKEpK7JKkz-'
    'k{?4lM}&DUYUFSl6CuiUi>GnOl=vK}6PIO&BkTZdlX@rq`YNYhNV2o%+@cIfmDRK`fI*7*KJk{(;367PQ4p;kY&Qb_%@7AU2V|CNcJh_{Ki11t'
    'W^pg5dg9Ll*KayOa6fRTUyzy15YmjLu(^S`GW?RQl;xRtyL!Et;c=W`7$Qgho-'
    '{2t@i=lnFrDeFUkXV8vPyWs+VS`%qM0aCW#k4BKEXXxB)38>F&Mw4wCp^(#l2xZL*@zA2PKD27Lxws3}dGYc*apMF{!RPI~gr#fzSv$Tx;-'
    '5fl)=A`WY7+hF^Sq&&$){7(Xe*6%Cy>JF^X%l9U$##;6C1j>bp`eK2)ose_=XH4KDNuaR5RwqqpHXaNHyYvO&+8AZ;@Fm_a2c2Eub*Vim0m}vn'
    'OQ^hFWH84FBNTzRK(WXtu=VKq&bQ4YR+quuTh7Dyt;EZ7E04WlAm{NxXz)-'
    'W)CS{eT4a6jH1gcn^r3>fH%xsr();=TeAQX_$2**efzJ{OKOaqI(%Ea=Mr>sAf@z3-'
    'sKMVylK}`MJmS~!(lt)y#u!)K`9YmNYW~4M$ETZ(t@n&pD2dxs^k}jRsvo1<tD9i_~7`m>4X;}q@m$R-'
    '=9L!x@x!xG#_m}9OQZ%n~ObuYGiyt%x=!|UKFsJ1ljYKqOz=*Yte4J?05vUAcE{8XwtfqTv>Crm4&M8c2XD}(IiM~o6ZQ>eS|2wr)i#8gpXa$I'
    'JbU^G(UH$28YHqWgVrdW4pyF}go90BVPg@(jDl1~H+4R>i%A3@L#l0V(l9JYpHrvTnYoiJsFd8P;RkR4lf}{Y=MAK}z3(VAmn|n{OQ73^bao{0'
    'ooy_t`lpxewbA(njvSBHoHNu-'
    '#Gk@)Y1wGda<a6kJFmy0;3RvWtxrq#mbZt{`>M`2R?XLy;ICH&_Dxp5jO<iWlXJ{#KhRNLbKA=~veh0yclI?@9$Q}l5Ah-uev@zlF!#S;-'
    'rjz_xPKludB$_%{B2QkN_!6j7+q<>{CvP7nZoCKIu}(iwH*vO%n;ldQC@E^@O0YEgd9n*<u%g|LeW35$F|;y@{FT53OPF*wq4}FZmtEL_EnuaT'
    'nly5DiK@9Lyrf0|f<7T=T(X$OpX}_#w9a2?Q-sUctJ0-'
    'QtmL{Hxq4WZsd9LiIrQ+;mT>GN2y)%f2vNLGp%t1?ozoj{4^eAFm@=@O&+f~taI*ZOL*~mBp);7*j3ZlE&J46(5@@}E!ae5}sT=0(;o<(LaGf!'
    '>iks4oGXv`9GF?(y6?8hs1Jt6#!eSB-;yd}W6_m*=F4+nj?Hvntf$|sYFlst%BYk#?m;dr-'
    'sATA|Rd#NeM0(?u*U<?Z(SxFWa?`d^!<!X}{fs2+2Yg-6w<v{kA=XULgsOc!XUmSi$@rwk@~E3JrezxEiJhPAg-e^nH$VXo9o?vZ8jA-sC8iqD'
    '=3IN>&fP28L@(GaJ+jX2Fy7f~u!s~*SboH4X%5t+hL}f~z0x{zU)Xm^(X9H;3%OoiA<3q~tY_Yu?UcfR>Zu{gUug%7?O`#`7@dl&uh6_7u?<Dx'
    'NTeSmbf6_?Oswf~KULaa>X;b4d~x~^7Z++W_h!xCHbeW0mW}eQB@0)45@8ySL~l^cxSVC0?YeR|PbLJ+8=;xPMz&x9Da3wX2@LqL8A!$)Kh*>W'
    'U2zjKihF2WT?jPInl`#|uSuJrGija4py9eE%<HBbQNj-DI6KXoVDy0&T@%a=Wl#px5bqpr2#cL@x2`5!jnxn}E<vI&rvTePspXU~?1+iav_WhB'
    'Jhs0$1rTslii$9gL(^y6VJpC)00JXJJ&%&O=cYZS6(#7XIOluMCrO^y1}Z1H{hYgDej~I)Q7bBt*HPRF&G{Vf7UfbivKRimxn5iqm+F6Yyy8+H'
    'Y`kYbFD`f*xU+c)<iId4E_8vpfAfmb<sgt+%fdnpt|d@8u`hsZkH-iIffdV$CisgSO+vaLsoCfvp+>7n;>e-'
    '77$@mRd`kmn9oL8qt3y2GJPC3hSMVYuCn{0u(hEzKV;ZAL*Mp^16zmOJbiloER(=raye*^~{F9+S{nA>v%PX<Gq?{u#qpa1q#*i53Q`K6|tT1_'
    ';h^$MK!viUaRpa!u(`z?+or~7R$>em{xM*+HUSrfw{Hsdg(KH3yy%SAN4h;q(*njdiG+<)DRc?kc&(vNxqCk9f9EXQtj>#bwI<==DnT{q%)@Of'
    'ouf3UbZH>m0e&b@ox-'
    ';qZhZl`*96n3;5#x7(5OuGgv0KaQfajW{^l>3Z#+YKprLPVi>Z5lnOGxLz<ggc(bGNeTzN95GX<Na1!E&I@9go7Uv0xm#`&X;g?&5Fk(lx!AU)'
    'd{wLC&k9x|D+LB`dY^=IOBJ7%wN|gE=|7#$Z}+txm7i?DQs=d-bh9n89*%vZ1KrNDB(^0R`4dfY)B-0cSnS=7-'
    '>Nq!mYKVIw@cahyogs{B<j(k{6Izcmnmaq}()a>0C+udL_Rt9`sK&p$-'
    '=9Nrt!_GuE)D0}7HQPGH~_+A24DEc^z`t}m{l&p~dm}J^W(6~?XEA84e4KFZO&fC<4=%1eQLjKiX)Dr#XfAIOjODz4+29(~ikO}-'
    'Ha8y!dzd0C)(YUecCjV$K?2Ox(6K?=w2xl3WKD&1khD#eP!MomiDZS(4DFAf-oT`r*?9>`7OrwVZf}~e$c+_%?9^?tn-kRi|khzIlYnJ4)<W*#'
    'DHHqk{e%LpCI5K^x)w5sz<MLv#g`&Iwc_FToK8!I9V{S)sJ6tql#?ErJAQ7lO=W#2J<v4#*$irEts856Yqj|0fX21muCu|{scm;Q9&*OkY3P&|'
    'KsQC$)Lp%~wvIG)TUVfUyao}fl`~}slWL8L%(MHJ^)hkQza7TaNS6DcyS#(3cZYb0oH{>igY|rN)tCKY8nPi}UpyiR=rznQmtsg9AQp{12n3BS'
    'A(dCY-dy7IST08IJu#mgr`Ui$osqNn#$Z=KB7KX}zx(Cau%`SS}`jnkA#1LOgu$YplYc?e<b!INb8v{|lx`RS1Ooh5@F-'
    '!dAHFqU_IU^6omrL9V;i!fbl?N}4xD+M_q{SS=m?W`kaG|EI$QMyC4$W6bPPnMg`@jYz;eSn#47G?f<$eWGIwxtwW`juW`4(fi#IMFaO4~ZVp@'
    'GHEAWnAK*uv96B_;Fr;Kh|4I?aX8qEX$w+Kc1r<}`Xxc|@c8nMND0%QTwl>EQ;A9%LGApFXIkn>6|=(`aq);2}Ll5nr~^!)&96&4=`KlSYrSjk'
    'aoWfMy<+lL8cR1nRn8r`kV|+OHqU?eC}CuVtC4UON>CoLpX9e4HQ_<Mzd%+Zea?2?kSBvLLRNG&}3iytP-wzW`5b|26z|gn#WpANbdOF$A@}SG'
    ';uXpvp_vt2JJle~nAC+J`ahqZsyK4Erzz`!I%m6vIA@VIQinYc&D8Ru`~qH37R;Q(;qSf=#6fHkIaI_rFz&X#0Siz&!77Ek-'
    '3y@XM3<s$X6wU+||0UdZk$!g3H|I8?xkWce+gbF+A9w3tatm>XhPFASx{j5`GK2NpBcvg3HPf1qHA4q1V2K&z8=g=`q=@{+R<Zq6KDA~*&Z<A6'
    '@5>y?{C@AhFe<pJDQ<R(B_aXmk=3(1za#@2WYG?9naqc}Z;&po{e*twr|<zOCd9yu+JHOHg9QOPMe6wNkR!MJbms%ZzQ@3H=7nDEu~gs)2T9j8'
    'Y!-'
    '|ISsT@(8{D+G?3W{uR`9~RE<3A$7}`VM{CKaE)$L!6qUx1jE~<Z;tT%VUZT{ahuX&xF>8>JQu8f>}w0;t0DHHNbF1jYB3B)@>>KunP!M;CwY;7'
    '!RGC7chz!(Z&p=h&Wq3Dyu2p=r)JoURzr_C`>uuW&$IQ@IS%>%A`~Et+-bV+Bf>!S%gliViMkScbNpK6F-'
    'l2<s3Cy+f)h6oGNRJ@O09MB?Ytn+j+N?;?Bjt^Q%NG>Rb{$+Emcd#hJ^ikParzV&Uc0FvNx?-'
    'akAoSyu@f9aoL(B5NdrCFUK*yPu3d4%!nIzkYJw=$>vrlf&uj8cm{Tqun{YY$rIz>{7ZuZJ(qt<)+jRZ>{&3H;N(KZG7xsj#ca=wpoY>i0p?15'
    'pAU{mj!5bt)HyMaM<|BGR$r1(8G0R8;ZVoQA`SojO>0^2YJ&5llVgA8jVAKQ^TO<o%BCUdi`FSj6Wy>&PcgXit#9qBf-'
    'd)dnd)3w|1<W_4mJ%9|Moh^W%H~Bft;ZKV_<a22si*GEPQ=cB|7KZ6ibS-'
    '_(s#m?}M$+idx3FG7&jVmMMyURX7XB+6z|0)CDzZgewy*Iq~dXd3v7g-'
    'R@t57RZSmuW17XxEC{OxU+r?tXh_jEk2z>jJL)gTun)Cb2~+<^)a#_=@+?F#;({x=>xNo@#ECnio$sCpMf9B}TAt^t2<FilPTaQ=^83Wbf~I;P'
    '@a6*B+`Ep=d<}8sKr-_*)9N*teHF#3Fxt0-d;VX6uDBi-'
    'U5ve9)%DvHx>mFGV@gK8r4Z4k}qZe{L>p?@OyW(W8lqOFw})2z*QyA}qz#{m}XA8n`S*cpTVX2&fJgQIsI9p^YZuA#aiyC|kI&q;(dY>nwxIV&'
    'w$kgk9z19ynds`!aN<U$;o0V09EtYCuHglMJa7V)X{?Z6&2t333I-'
    '!WY9NHO6QBE}crZ^gX&|j3+6!#mR>SWG_yRT`~#fo>3Br>Kj@9F;+Wg498~^aBOeASjdu+G-'
    'zaF;Jbzg9NzMxp)(KVG8CXwnglxTr@5aX_u@tJTIw?4S(EUb+TOzT9Cj~(e5)S-'
    'u>MBvPHGNHYf}7v_ll;Am_R3Ph+E{djEYqfgS`|6Y|7FSy?J-'
    '`6JQwKv5^F1;t^Um2YK*D)m6+~t8y!KMv<J!7hnqXnOk1p)8WGduzIC1Y)%l=%|RcgI-'
    'H4!Ds}W%rDJNm%~Y>>avGIKzUdY6U(4yU)s#M))5&kf?jEV#)rEFVjciFezD@vZ1Hoo&f(M9$s-'
    'X=Qc{Q(v(nQTig`vU460X6*hZ6S?W5zDq9Z4D)qtrftN_z&d(lxgSK;2iN@~ee9Nn;Ge^?+7W;>aAI*EmbR?{uoYQW4aK1pd8nlSEsI5X27{ou'
    'k|a#LUm%Yj{AjlBg-W?pM>8;!?F`+JZv&vjkZBdf6z7uUqDBdp$rskrbZh0$3@YUV}!rJsyK0-'
    'spBK7T(LPZmh5HEuBqqlB87AnY&((jtXSWNky*8@uQ@plV-QkdcP4RX3n*}UPKxdRVb%hS>ve4qEDH8Qt`|}%_bCo&1sfazw=Cr@1}tNk8=IrN'
    'V$G$HC9@Oo=DfxX~^2({hK3uWPtda>2W%()u_%rP(yu6m9F+(RJ!`_qSEdCv#WIb|HLZY!S`0_Uj05Q-'
    'C=pf2ek@HDBS1{&Ktjx79^{>572`2`2LHlLZ%cmTn{QsrfM>*va%?t>DlZiiTb+%MM_d5)j@4)6>$ZKca=7d6!v4@n1yHihO>BSOtM*9WXr?}q'
    'rj(JZCmlBB*S4<HeZ_1SItRLlh39kqbdM3%c)#jlhZW$oX&HpJ1sIMxzrZUOKX_OfV5VhlQE9dicbX%$$ntniihUMAN39y*)#srPP=<zs3%U(M'
    'J;yNJ{fg-XWh13=ZAcWtb$J;$^!0Hxx|*n?c=SQ(ULnRT=aX%g7){nTg4SwD$H#i@e7jhJ&V(}Q$|kJr!BI-'
    '0OzgHA$mq}`_UI%@}?t??;SdY4R4&q;*EfHIcmQ=>-^kinNeA&#gJUrq_n8qq<=Z3wJ^?#YONM)I^-3=0_wp_%C-'
    'Rj;!N@Lz@1er&u2NN$vGQyL$6+P&$=mv35~OL7CQ~4Xq`A_XxL;sE#GC=j@VdD4_wA%RYno0Ho-'
    '*XZw%j&qQwOUt>Q8ljZU}O|Aqd2V_vB;E2Y|3{UKUz9>?!E<2$`cvoRj4Gx&Fz^)wAd`uHm%2BoDB{6$Dkig<yVXUjm8B7e=YF;nUby1TH$t1+'
    'bCupGAH7Gg-0wfaL|ShSHiw}utVaVfP%$m73Kc2+j609MF-'
    'w&Kb3r_kaT`7IWZYS%j1S=lq|Hn3MK#4VsqfFW;u2fb@|ACi>wx8{JYjaeWobq)1S`j<^v5<D62Y?QWCC8!|@GIq!`F*VD^Cb>^#ZLN?6II&7C'
    'YC;^wRj@hhC#xF&ekVIM<w|7!%ILa<;I!UaKd9bX8AY~au2<oV#AtRb9;R4?qquaI)7AY}ZUXMgGp$jqxyzui_Gh&ocd*TC2)%3*#Xzjs<lHar'
    'egPHcbIkdjNn1{Lx~}dm-*d=eepf)kEYWJNbWEqUy0<VTn6<Lq07McdIp3k-'
    '{mAI!dgz@U`AI_p9+e7x3%x+28xUKV4jn~Qgvr8hpeX)JnbR50D<@dGQMj9UX@$&dwRSAHD`6=9>cv~Do;EqCDj~<}vY$U$bazBNCKY4K=O$Mt'
    '9{fag@t%a0`meY$Iw%SN28*RI%djwCv`+N=GQlUspDiU$)GF+n;`ZlbmHlOg=Rhk~8Auhuy}Xvprx<wG3BEd*(H+(?#<Hv&-m-'
    'wPht+Y5U3wI&t$Iy@-?K&6d%Sdkh3FOumW<WTEB_8SbHx)Chdh-'
    '%dY^{G+&k;gsaSI`RAXptw});RvZZ<_#2B~NFe(uy*NRnNSOriQz&jcb;!twF;)6u&q+VE%KM}J?pE(_oK?Fkx8f&&E$|Rqb95A2rc6cN4T47k'
    'J4A!yi+MfvZgaJO>IG$_^a69124)C(ijXMJ)hFvCA@5s<*Q5cU_0Q>`DE^y}S1yqHp;I0r_+(|BPfNSh~A(wbtpdm#Ls7?O0fX1?+1?yF0&FtU'
    '{w2u@5Xc%S!%q?HCh&Ywl;774#Pg(k&Z)>T-w{=!)^iQn4+WL`K`&2swS+rM&MJ;)CBwp>+;TNAt82WB|BQURXz-Z)6sg&cY+&S-'
    'lP|8}*VVX$HGsmxVX{I)aiZ}yj*jwvIwa(7Fo5d}@Np6!sxt(`Qdk(nAHXk4|88yISYX35B_eQ9eTr|!)tym|aN+53t%e-'
    'now}<$zT9E=BKrK!~?B#ZPtpPEKk!s)*?dmB-B_H+#`6Ap?l?3v|xTh-eC=D_~hE=C9gM9hX4^wbrv|Igdf5<OaowQFIm)-'
    'I4!}z5P&+?uYv6jkP*K26S`6OQhBSMcGXH^WxF=~%LCt7f-z%yYt6oIN0fvS}Q#RokXn!?nD02|%Qb`0((&A5?9k>-'
    'ERh?j4s;C9yr!=fLR<I<pN1)yprL1l);I4WfUD#KDZoidX<PF<J`(b#{;)c!pu>Ju`<6EVV*GQlPc5Yu`qGxG}OtoZNWGjmq?{3egZ66TUJ0uY'
    'SW{S=G?u6C!bYH=Yoee=eEuXN8wy_yiF+N030bk*i<rc>KG*JM|7##hzt%O?#D0?-'
    'KQ2Bp6arVcegDj%rd&Yjdr;9ELIqW9L1R`u>wwbJ?iAYG1PCiJ!MQIwX@;y018vO9(6`pdmttLM;$KB%Ffh5DhB?2_}g-'
    'dbZ&12_Rs8pHRKGcf&7f6*1_cFxYnRAO7dsVpHIg3?R<wHy`;*t!<S0|A&pF0kAAfJ~-2xeBltEMRWot|~X*;(Y)HD7KzJK@WXylA-MwfVoB*e'
    '@J=EUIy$gnYE^4O5BqTFx7C<dq!a#bCz)X!bZDv(E&rd`WbtlQ=s-'
    'a*74G%PC<Vz0HhSrf}*S^XShde0F)_U2J_KDC#gI*N(nQdA!ds;LrFf@KIgH9=};VJ!w`)R>AW&F$C3#{EFvb15)D9_*2G3&k#b$)$1wfvQ+lF'
    '*mKLb2Hj=YqX1YoUs&jU_4$*Lw0#n#5E;pODWE|Si&L3;l+EKk`UE51{anJX)1fcZZ{RP;Kv~zLUc`4bg;f+1RAcs%}j}s^bH?(`}2Vdenx)IE'
    'ffMP724_+!$k0#^o4Q7#{U5lAdhi^+8&$=Sq1c}fcB$-7lY7!7=c-GviS1=&a{`Pi44H|--'
    'cQcr$$NEb96^sU>tpv7oEw|Qzrq=Yv4yL}nFjqXNSVxBD%$2Zj8{+t?f&qkHZPwIL1!M7Sh~Mjq^}15i;^#!RYobN1TA@E!Pp!6eXE}B1@Mohs'
    'b*fX_sLp<c{$%ScaC<nX)?TIdDqBksBHpiKX<Bze5g6UV*kiCt*gP7Tzt~x=gVh4&<~q2xry{6X<SrI4=LDQ&>V*{Gg%a6cQ@mI?x)>8hFr#ll'
    '*zTIibX2KVH|+93rT(f?e{Jrvey&z4do}p8VYS*}1^(0zHpCHX9c<oM{eTE^R4|&V;ME=8NQxL!k@!vC^d2VH?2@pl1e0IDw`w)(xmA0WSt-oH'
    'Npw4yjm52fAHwS^#EgZCMMfF+FN6Ze_nVjGnh`iF3h85YUk>9yK^)e?55t8MhSHv-'
    '6$SUCI{8fJvpuoc?BFxN5sjp_1Lx9ZHVS5{^~i+EjCK`9jzM=krhRIP4!ZqRtEfTMPlm&&-'
    'TzRicDvif5h>zsvMcxndPxxk)1FylwOZWEU<1yc8O8)?pK7lt{#y0h@psaFun|eqC)Z2rJxoQC6*z;Bbwy*V0gLk~>N$4MT*N_fQZ*7YLbOodt'
    'I!{*g?$Me(;%eSLyS->WYp%_g!r&?vZaZ?v|Y(^sc|64O&jAYXh#C0E=g-hhcw{Y0UkZ@gQ*$uEY4?wWO?rNi-'
    ')=$2JT`!vx`R0EU<5JnqE1uPzZPc28vB7-'
    'X_f7sqOh5MyQU>r`InrdK>C!*n+cMMfW@u8MlOLdoSyi#AKpkF$zq!0#sD#7LNUeolS5rlJmh1o}vW)t#mN8B4c##82fGg^wv6}Uvm74c@h}m('
    'z^!TbM{FZ4k)~By|CmsuEYeVXEI||E0mfiCrpSeyF=}mWRBi313EqpqM($-'
    'P7b9chs<1Ip1ZV2hn6G0E08GZTm*+W7{CH3<1wQZs@^`xbNIT;rZidj0#00ug@nWPBVr7MLmjK~FG+J3ECUq1*Pc1Dp{>S4Th9!wJkNg2mvQoV'
    'e^w?WzR^s;6dJE%G-}n~6c5HKj7<QKGbiGTVVpt<K5WSdhav`+>8v)pE-@aZh%J)0I&BigURrOht>-ZwZ$)MWWog^ovn4kUkw7WlSp-'
    '=L#n3f1C;pXGOKjc2ToE4J_=PA`NqYA0R?T`tZs*xsF-cW<WNGq=UWo?dMU+LCF)p1V{ES(oZ_5&VwT@8k&cr<j7T4sOjA%O$`a7xi=*A+P3fQ'
    '(1sF!D%*-'
    '1k6%8za=c9kMT_@RC6kl<!Y9fDxGoaHW;&djxiLZ+RYnpI7iB?+s^`dnHtgCI^%h>Qn{BG6B%mQ}8vc8X`i%220M3JCg{&D_A@{<Dc-'
    '=R3g?uW7c4Wu-HQV!e~YWl4ax;@>Z<+P3v?#_i*08TQvg!FGVf<L4dXb^}oSYCh!DZ%hlw{G7{t6vIhwUN%LrB~U%2$e+|4xlwBZ8)5PjeOY-'
    '8PVK787ZQF@E*WIF6))y;A0Xy=V1T1U)4^D%JO@o-'
    '>GJm^zCF|RC3R)uG2Kx?mFSVN!bVp**fE8;{Y;mi@5jO=h;BgFw}m$|!z6KtLO(sa4}ixFWL(Dg0=WMTcXgp{#t;MTGG`Y8hAKW*venA~+(n5c'
    'T@e=qC^rj6>U9>^q_c#H(sKNa``Ap8z9e+(*3?-nLgB~5+-sN*58Gvxl&v)?MPQ9YHx#V?#Ah-bgtC1d@w*NJHCzc`dVtN0{LSR_&#ySfFOx8?'
    'NR)-WVu(T4SAjoUGX)O!PUm)Th2ZQ+ava)W4wRgV?83yZDjczY$#mnf5}3c$kbJXw*26fMoOEymLltYm6tFh&Kt-'
    '^>l=REGjaf;<>KPSy!NTUA2@k_Y1fy`ZhDA0>S-'
    '_!;JKgq0V=(EqPsf~>MO@u7)jxDj#^=(?jZ$nB%}$YTK7a+&qCIwG>_&VE(z0hThBi8>?od=`#$`6+3u$j%=E!SIuF8TyGyXuXW<$rBG-Ta=!S'
    'RQ6ge~2S&KR*X^;z29Vnu$k_N3M6)Lkr6E?+}f#kN>JCsw6Gk%;%Iu!4veb#|98C9%!YJ!Lh~1cpU4W)p9{yn^*+KXK$_e2c2nr~RsUy;o<{_#'
    'pAv9?nNp$F(oZvR>9*{0HOZDFZ*6*Q<<LsL>nqZ`L(tGcKclEQp-'
    'FU3~LS56lp@TA+rE!oCdLJBQmmhBXjuoz5@q?&P%7?QZQ0H?l$qDxz5+V#fUJhHJV%ws5bRki$D=pfBGzHXbKk-COn5-'
    '5cgY$^3KK&N&a0t{iRA;TLJhbv94go<;=}=!m8t_q+s%q?1Q@IT@BDykNsNIbukB5on&_t(aSE1tvT55r<_6BejEYURm~)&$EBXKEDq48c$J)C'
    'SwUISGU=n-'
    '2IAm(isi9jgL%f!BiELgJCC2B%mv)l%vRjAMW3r*`Be9(|!*$>kGQ}i;3QJ+IQNKTw!r+lI{I5_d<M5F8Q9*hzSg(dCVm92uSM9>BW|ei3FuF#'
    'Tc4{X>z%kPkhvr6;h!1N*dV4G+xI~Lm1xT(~?JYOb{m#e5Gl_)7i2#iwS`q+u!0ors*!>zVp;<q;ygcODr%2)?2bbGHRlJx|OUvN;_0P90bm_d'
    'nf#veGe1)b-ZZopEy$&rZ|Js+hPk^B}SxTjmAST#Cku&3UbmWO=QyOcFuZih9)?`D&crD1q%kOs8kx)u^)lCyxEYaMR02R?>%<h5`4u-'
    'Njp`rXcM`9$!Bo6&s7}4qr^ISiheR2%5}DwQIn57%mA4^08#gr9x}@@qy6TyJBI|1pWu5>Il-'
    '}if?WpdXak!)ue8>}MFGHTF#FUb4qN@fN6ZOycKS<+s%cthYnQN*6$igez|(ASh-'
    '~x+mH?xAcT}xrvRstB4Wrz8<W~o@09cd|sVNF((VT~1B9X0mvb6V_>+qiK+lo@?a|?ygeP3vx;Z{{X4~BNchl(Ncxm0932_uq1aI03)6H3Onf!'
    '0yjimwUA8(DedRZH4DTdjxAd~4V~;|{PBoH?!Dn5k*-'
    'gOXwPd)D8T7qycK*sFPPn%xru6Ngj*l@r(?^;lCM#Y&@i#uc#^MvPMIH_R7{monnS5F#EyP8g-'
    'UV0zkcBd9L>(~0fPCg>W&GQ6se0+^uH`jMlOihISzG?WK90bddLs{t8v&@UO1k6W3@+84HG&z%4{9JdG<pO_<1oy2{_GZw7DRO1iGP)e_pKIAZ'
    'O679I)CS9t0NfLZ36Hc(`h*EdNR^av_9R;AlqxS-db%CN|nn#Se6b_BW`H?$EBfbClM)nIEIe2^{2ZfEidVC|V3L80md?Sa2jT~vYLw82^a8yh'
    '&O*V?pWx$`E<@VM~X)DdYz78>;wI!XAVTsI*%Y0{vJv_43m0|Ed8;;Q*4*#?OdWs_1h+6tXASIQT5|2w)pg;-I0?-Rw8Ah_u7yw8Gbjil(2-'
    '=7|`^vY}Scp@mSTcOVt(;r3NhriPpIbJdn1~0Kn=TCs$*C8&)2Z2#mf~ojrc0YSNTI5cfAxmBK4|>$(kJ@v=Uvyk_HjQgOkC68TSvU*{lU0Jbb'
    'N$IsFxSL&&RrST5k)YHa!}J_J3YBx_T7yf^HcV47zrr$>bET)VV=MjA}yMvrsCI=gGOzB;3!Y^a^Y$<VAwp-'
    'V~F(#H=zRIqBAnu=OEQ7>|5bplg67$6dnt*HCaNLab6*p0++YWi{~{(Eb6{LKZA`<9aJ4jOk`g(zU6)ii}C{$g{C>JUhf?*7eA(aP8Ta6aIDW1'
    'T)(L2I~Fe|LT*l;9-~49C*e_n?|d;$z-M7ym+oYE07fzm)&t^GCJ>nXf;OdZ6js&9*%-'
    'Cok|9pOE+J8c=H)=%5*T^t#vlKQ^_b?D)sPIxQNxnzN8~I{i;m~!1s&M*gExt3(VxsLQ8FN?>8kQ9(~7pp6vE!?PQun3E@m#=Dulmf7`?dE$tt'
    '-og=Xx2A6fB(H+ZS>-D=?DJZ+QIa^ve8*nBtaunQx4KelJy&-Yo5AkyM>-X|zOqub4ecMLYX!PDJ-'
    '`OYRi6<PqQi+c?nYsO++mm6t+inbd?O|38G0#uRMiqE?T&&JcQ+mzZ^sN2fxIG$g(tgVaiy@4jq;*qr*a8gV7=KTJ#6_pqIcr?BH^Jb88#s91C'
    'r)?p1bB?b{b74D_&97_bWSGc?d}Oh<Qr{*7Zclqd*E|7P6d#Q+z&Ymf&bMRuOmO`2koz*Ti`Ka0<Sb$TWJ^SN3C($W_f<g*iW3hJy%N%he+4T-'
    'Mq_!u4zC&1g&r1d1<JcoPSLtrBOsmuMVBjq<wa_U1WN)j>Nju&bzCH8(}*1Lb+U({!p&T<2+@i$1mIHu{NzG)uI&T-={mY@%26XV*uK9zB-'
    'H6jWhl7q+nTeg`PX}1KWFg@aKc4hk0S&eGjk{kYQu6n@n3LoCfX+MYBAED|7{mj>|hIsjxu2ruBSD9`qW#6bHQTICb;boSbxus7?!*B%!EMkwn'
    'U$2c_CA&-bOkeKS!*8eQCz-x4F553-!FSM{ir<Y!TSHe?!J@wt!JC7{rJ#BUza{Ruq9rsA>_DvTXdS=wF{+_x9*+`V#vtL~9-'
    'WkxQ||BU%bg+NREq&;eZSumb7FnIKF##c30)~7dFk<skC1Yeg<z|}0`S$n`2QH{|4q9EDvn;pFPqE$YAEu~y(`|gTso^k(AJHyd9rLv@nkX1>('
    'J(lc9^2y$YDu`rXq*zj%tK-'
    'c;RwBbQ8m`>VoVB+az44?CR?kovKX39rq6o<^aN6j=kCQjwflbq=deC|rJK7l^HhS;h<P|&boSjRh9yzLd3^y3!#DvvroIUdK>tFM7cp(stkx)'
    'CrseSxMQhy@$Qxv8CF;k$viAc^EmKp+eLRjyz8TY7IHWB;d$N4EJAu)GpTIh}0$Ji*bQN8_W`kXg@eoFeBpu-'
    '`DDXxH_bPj1Wv6m6XZO0o^>}D9n4~Q%W4D+uJWw&6_-'
    'nZOcXV;n~O<H(FPd8t0{9A9E8yl97u?B8kz+CZndcbZ#T27}FhAF?s&7bph2MqjzeL&R#caH7F&vr1OY=$#AZe?LM1KM00Uyl33v<e{u9y;NA5'
    'oHsq8E7!}$2bH?2R?){F!Js@C^8@Q=>K3y#-I&)DEl1B>muo!ook|2IKDW)kj7~g`JS_dwACJoX52LN>1QM-'
    'FAAu3@$&rQS&0pxEaBLYj(s-6@k3|E(NonCX?c;ns<8FAZ+NHCb24g|Y!;|2n6(g4D}&-ONO4F@hZmXJ?VtP1Z5@Yb(mHRq-dBikE94|9{-'
    'zHTD4fY_v2D=A(zJe*xJ4$)C+4@T15VlpGEYFuqncQqFojV*rIogp?IoqPGMZ}Xlr>yAXqTL3^_!e;d^q1cxhkMj#TwmVyK(Yy^1j#qFp^MvM7'
    '!)P;AFd;E7fCFlE-Oq@*$yN0g&udFdO-gw+72KwjMzwuI<H$#r7~9EXr#^_B1kqP;dY#8J5aP6~}ewU2414DAnT%y1kJMwEV3<>F&*({f5=025'
    'U`zM@4L*3?z_ilXz1_f~XvCikmy=2*wi9u^HMkSJJRX(+*B39NgGHbt7HJl^#Lob%dL_OBPl-tXKzS_AiTgV1b3=w#w|_6hUO+eG12fGhgYkD~'
    'aRzpa{R4RbiV;`wmN$YLNCux1JCn?TUV{PJGj(y4R#XmOUmlE*W{=`^nzpix;`cl5;a=B|fl<{a}pBdt^O7lbqX_=Osnr#hbdFbZ)XAv;LKzSV'
    '8NjpR9wdUy3%1wPs&1834UX{(an4(D`wR%#bkF1}nvetHlrH{2K@#G*<GVuACr5k?P{sr{bBQP#hDNGpZ}s)V9hB8RD1<L#o^kb`}R=WIqOvqG'
    '`>WC^-'
    'Aj<ELf^e;9tHnk~UBH!Fh!sbGsnrwg1vo}7vpM!Cnuq87~YhP!}C6j9a|at18y8<onX+(_~&d>Gww8Eac_R>WuSkIn^{iST2XJDZ)}r5qztBxA'
    'mxcJO84Y!2KAR-'
    'I!{0#cn8PXbcrmq#95@+_CS<poo0Dl4&m5&EZFjHLyWrJDm4`q~Ya>Of?#Wf)?vq?!BWORJgA`OKmzv0z1StR`;gVblzY5XDp8@wB(QGMp0@H-'
    '1XEQjOKkeMqrPm0(C5#MK(!c`un~_ikZeoEi(VQQw1q4=dIog`KaJ^iGk>Wt?R)PC6=F_5AMH6L=IU)Tb<*H~uYI`Zsn6G~^U|$w!(~DtrKm>P'
    'c5}_X+c}+nSUTU9FHilc%^8RvX5{BfMWK-ZrUYeCAj0nx}Mg`6#uzpvA1PKC2d%xkDMFL-ikk&FiC09W#mhe9ibwL>xrsV~RIq8CtC2<br8x01'
    's3BEX(K*q=}Xswbw_;TzX<`GNZn+BL@t|UsfH=F&*-'
    'hNHkYsjY91AS8}(EWcf*_1E3ku&Z|x>;N}WmndV@2(rzpXv4rguj_o<r7&p$?mTsrj?^!RT2*y(IZ!Bu13#0RKdpvH7N)$qRj_G@C-'
    '&%+E%(nn<ymsCXFff)%A<Z_DdRe70qtcR+Be1S;l-T}r%28hr?g!;UiAjpg`3m+)3*__eT|!~OyZpLO{WDNu|9B&4_eN-YpErZ#+sj>e@ZtHM^'
    '0+=r%~F`>DOzeFp_FM=bF^CH4q(AOBbsU~)OmV>%C1{Bd{nQt3IUOhG7!6t{Hot3enRa#%O;z+>E{P279CEBN=_u<NJIc|><k`f(%rBGqzW;)q'
    '!z(1RvKF|Kullc(t-V^RZB>BNK{TbwBl=}GB_Nb#+a1DbVv&ntwgWVs)W|CECoS63<wj}-'
    '9V8rpOPf~$LLaTlKjkRZ7UAj%cF8C`l!gZf%Fpk7wEqjAp-1VHQ>a<w5I%lC?e&dZZM3Nekn-'
    'x?c7VDdR%`kJ@`jDj7w=!rJ(AuFUwqt3S>B_%Ad-'
    'H$y%hOY4ahb<yF3zmZGv(rTtN9ylPT3Y*F~{a^&|>yW4J!+b72l@NXHUy`l6?aF?~D1*xYPX9~xpADp-'
    '$rh#{_UGy_*1deB$oQ(9%#CPeAH}KsUedvr^=bheJA)Q3Q&7o_vQIg*H*2-QF!F&{^k99*Re+AQVpSLS>Z%KUnr{iY7(`}!`yX9IOi-'
    '?6Na8PQprX(LiddH?TPvl=;&AazY?y#a$HJQ-'
    '+^25P)ULM1E@P5i{{}cQ<JEq3X07jS}t!869?zY)xKx5eMHOK{Ieqp=buIsV#a@`TxCp+&j(y86`!-!2nn3SRQ?p-'
    'V@Iy2m}<yFL$9{>$={vnAN<1oTnLtEK4+r+$;!KCclR~h^Ei45nX4B!&7SY&UNeGSq(Y6XKEb6F=m@z+<-'
    '90Q{n?<d(49NqHtRQ#lKOXEIYtLU8S>n8s>Fep~003<xlr?^}v%2F!~b^6I))st6se1)Y&Kw}K6g3nq1%&{GQnNZllWXBStR>SM$(6Q;vU9U$O'
    'am8Y3&zvo87mp?srja>3Ad?Nxnv-U?(R$CBVUCT2pBT)~yVq-PiZ*t(<%Tx{1*Fximq9ZwoW++^#kqv)E=w=6o$s%gx2f3aO&I5?E5aq^C*cvQ'
    'Y2%k}Lu{pU%IGvA=gy5<paWqHeKg6`7=&CKLnao5>V;qmtOXUA)bkV!DP=+^!kLhMBEio_DU!Vc9N=O99!G794~=9XGxe*r4njW|iM)__&NEX4'
    '0H2DP)$llh5r4vAE2u0+S9suJG7n6FfVpHMA1cVZ=(HVAJM*_Uj%Oi#&^dR|LVv`-'
    'o;&)y?Oa_2rt^bAOAS<sg=PxE)>}P(sp4I}#9EnUH&e91)r@S6_e{|dzZ`2-'
    'kMpv2W%yF*2PIB0s{BjwT_a}=VED8fok=n1GpHk52?26$d$WbZt~wzLVWOc-g|<A?6ynH?pFIL<)+a;9Ut#uVUV*MTwXy-'
    'Z(#YjdtsM3#sA>;#pr^XZx`0!Gizh8~&I|9fXJ|P*qq%FHEuI8BO;#AqWT<3WzLI5acEPZsWuHo#$`un~*fN+bEV^MRzp9|J!2-'
    'N5&>3Vhy7AYG*$3N=KniqS?+YkYU$<!2EitR4JI6@^z1+-b8JF;6M~iea)(I9i0;*_T!I^LCq<J|W_j{^Cc!~zGT;}q-'
    'BC@xYaN%y2X@IGd4}eamrrH*A&R{d!G%#k;5<h5xMb>JMM!IsvW}GfxhW?%(S{9@B78GXt0GfMyg}F79McuISXo_-'
    'm61obSfRG6+fDE4&TSkGW0avKeFyVv8B5}*oCD9Ca0-'
    'BPgNt=dHIGlc}eb(TmQ)m?xB)fB^24pL_!}#FwMJIWt`;2{Vt!?F^rkeyq;{<?tbs2I)i086r0?7&B-'
    'yoWTXnUTO5&G`v1bmY1GhMn5jKgnrk?dlvlcN*IV55;RrLg(!r=&icUaed=zK578sGl3SQCGLD6?EEZcTcq8?$x|Pc`!~IA6t!KyO8%lMIZ2Nz'
    'swhAF|&p{?@$Hjd~87{Ly(qIy0mL#7AO#Bf8TJV|3{uakv!E2t?vH_t>0Z}?Ua;Sn;?swi&fYk^qzR-'
    '=J+abc7W+aGPb)r@AznFXS@zr;LM!RoqNtqkq6AXjym%YN^ZtbY;A8{O*rxooh=L<<COVr1}Nza866Mk%eRcjXvpq5=**nV{%^?>AAMRo^Jz<F'
    'H~7cw(T{m^_(%Pgl#<ZZWKG3ZWkojp<UY&ksm(VgBordeE}JR76*nC-v@#lt1_J5~FX6@k{q6Ztdp_U7-'
    'ag+hE4QC^$r=auu%wLq>*&gN7tXBj2@kf1PDt$~?(ac}$8Sq-s#G}9<q9`Q#GUOCIU=XrtDba>=IEyd1Jr89TL8K}e#{KYQ)oS6u#$iQ--U0BS'
    'CFS;?ckoGG)Oo<2|J&4fI=6IP8V+y<G=q62zBOubuQ?>>UW`*I{OWUz&iL|QsQ@@CeGP@@O@~?7IKwP1zlu1iG)a~$E2`rt|>KoCzDneer<$BX'
    '#=TPOz}{)--'
    'BCV1lu^+P#^F2i>N|E_5!f&=lVU^Zx5m+_d!DK^NqpRjQpv{uR=;)nQ^kn!7SH#O4La^P`$IN&orAC8^ICIv;83pFe1etfM*@}tx~QGWF`ulyn'
    '8G5j>y;LrB&Z9vu6UP^q(RtBz8dxIrDkNvKKIWD;QR2<~t!4xN;Ug=4bb<dw-oHTVNc!m&10U(fD{_HJ4a?5c376#`oHn_?9P;+CAc5^sa(s@w'
    '>8d3<0AEmf@F^{w2oSk{O1)4<EoG=!fEl77v88xVPXrq73a|J8#Sy>7W2OF#L#aYfhOip?%MfMvjLg4H~C^*PwH>Y_yC`0^}>KWOg_a8+Ea17O'
    'R-0wnd(18b54|o@VMkWPJGb;eUkzIsqa{g5<sD-'
    '=1GQShIRM5}sfDlT+_sUVvxr#$+XWquJ?p&}DYm{<+;7kKPpOqn+N_M#|uCxCNYC{|%gV$o5YupYzO`(s{APbb59P&T^Sh4?*kGfx5<fd{DxUu'
    '$UWAEnvgYvI7T14sOT>WJSz&E%a@`7wO1s9M;dxh3$R8&D^iBps<_FSApwX<NoZ+DQ-psl3`>ooE>b&x?b4f&F<q)!c&tXz8EfiRZ31Eb{qh0#'
    '#?qYgIK$W&?D!O*qh>)VMQa{G<%BeRpD2gwHVg=4abdCUlCL9t=^d>PjqI(;C(C3(5si{hMqJhtp-'
    'e5n7fSu3*9$4zZfB|O!Vd@c&2dBl!Pw{34PJ{g%m*CKN@LM?}>n|Umd_|BSIp~n)SkR(^~yQl4$CEYx4J+3-'
    '*G4eU_sY_b=tJ%BAhUJnqonEz@icl-rihk<+JO{DwE<TOXH4*~h6YHd#A8r!{`x325w2-4(@O8-OfXMH@D1v_^8;*00Fwt-YjlsRcPNW?>E{q?'
    '$36iC=dRy!z1zd%kE#^^wzG<oiMPwd;iFV8`r-EltvzObplk90I84Dwm;?a;DS-'
    '@RU6F@}QO??YE+!jY<q(Eg3UDi&NhVBZ@A@k_#|Y(R+0B@Lri@QZmR`?@crN@iWu8^2Vv7<n}<;p4w9i49^;6u?J&ENpj^%%BMYMH4DI_HcMIS'
    '?Yk8SVweU~=f+3ZflvysxL-*+pvjP-7!h(MDWgW-MG6f&92W+EHCEMozjhL0P!j2YJpaY)GdZ}%b$EBF0j3j6qRQMgzPM?yl>DW?X}eZXHQP(E'
    'C?a|jkkeBb5h~jAKLqxwg#qjP9s{+N4QN|^^XvhFMCV^%k|u<Ka$!EcaPm+&PMFiwYocW|8kJl}(Q1G`MW7n5=Qq!!_|YmVW}7q@EqO#SJcr5M'
    'S)<t;QM_S{vUcJIsgMfnTA1hDHoV!;S)mp_d+*$bnXx<>G)^X$gQPPOOc)>{*hyyyMa)zs7$^M?y+SBhr~nS;9W8`|g$m$M#^*vnRI1#%pJ(*`'
    '{qI^oYh%zw1)1uGx7Vd4BHbYlDmoX1&J2bcgR*Sp?))Uvpqrfr8}NX^P*a;2Zrp^*AUTa_!@cLyHV4?ZBJJcEmjoTQy<l*_qMKCRmqXf2piK%9'
    '&Me%;svg}f6tFNO_QJ6my%TFj*E#_f-Puk2xI&C?c7uLl<f6xRDV)0%2$-'
    '1_`T~;UVjcwCr?AiqlWj$WTzaAh=Rf{y>3e?)E#YX!93OU{m0)Z9r14kG3H*it|D*qL(rbU%626dn<4=4&*47>7)*UK!jjljh*E|0&Ko+1y?0_'
    'e{?r8JK`RV|DD6a&K9f<E;1v}j|$33ryU>)oFML;(pBTuZIrlx$KBzuut{(79PEBokaD$Adfp2c9~8A-'
    'c?Ws>@`E2oP0T<l%O7s84>*Rwk?)%4`$Vp0y?BKJ~U7}{3+2;ZialuY-VanEH%G!51Idt5MkJvq0t$;w|zt@)BB04x1S@3aZZ-y-'
    'K~Wl?JLbWU;UDsYVBh$I=i&6YPf%9^GF#ICpJ1Il_30{g_>H}BMC6uV69su+kGVK`GR8IGDMF<3E`iboau2ugMMpKE&-'
    '*j|KjMtk;GcTNVUHsB_Oe01+(kq^tqox@g*h<0LUmJN?q-MX{(tjG@lS9@X219zqb+-'
    '#E+oVfwR+`0v$AbevvyYpQZ&!TEw4y>Jb>|vi}?y;@w^<u$JLMk#eP+=`p*j|#dMZhe38u%ewsG?gRMD1d|^k9{w1O|Yt4K^>xW&$R|`YR^}>s'
    '0u~U9D&-v_cHH2tpfcVEAj0?SPEO=;go<n3YiCepkMc7-GzwWBE<s-'
    'zv|5*s&a#57t5lPz)ufK@4;%BAHH=Ag25@0<@t8j2&BRoCPTZ*FY7z>oFzQV;LA-'
    ')~1EXx&hLK7N`OI2GvU@x++|gaQ}un1K3)T57dVNUf>C;x?aVz<R^CI9zVY`J4j30JyrQeCQ?i56b@9wJF)crrB#<4XZ%I{;YTHsols&G#y5E9'
    'N($&3!xz>1h<CchaIwwq_~|EWFL{zPAL>stkPl!aT%6MyZ_)G`_f}Dv^)9Q7Vq5sn3#-'
    '0u{TpDEDX5LSm8o6hwKFASoS`fheGc>fh04)#7n0&XW!LB|8Z6zA{v;p<wOL#~^9ZE4QW_0iNsWe|Jz*+#_)@G*6XT`K%#@{eWEg}koEZNHtsl'
    '=GF%I8x42r33Jfi-#L4;$jb^MT{bto$wEQppLxN{eyHiTkn1^GHhD-'
    '5Q*=X*QcvSP49Wo1)!ITYJMq)K1hFcakP(c(&X@1a^GcuMZO8=OS)u2__6GpniZJgR9`eKy|;*yM6@E~z#UsgLb;LAR27eLFkH50yjNMecF5R@'
    'eDQ^)HQxmWE{|{X=<R13t**g$<@&mRLr}`o1QN@#4i3E?KE%DUrMy+q;%Fc&iVcqzgNY#IF5_$Gxi-&ez(*rfC@jj-'
    'O`9*O{DE^L4|VFC}JWIl|^#%`7{ub5bdiAV&wybr|_eIZzZ^R1FvIo_KXEI|++cybXo>Z?lSRvSK~)qPzn-'
    '=sT6bJ8xyP?deyd9H#syTwOL@MIOIes9gk;P^bJ$c)iGsR}9I#qWmW7$G-vYW!Dg?!!><}pQJOtqcB$*;-sl<KU5w3R(`ip-AXOqZG50@1l9Pq'
    'DSlbw_B!sW_<<d`i+i@)C|Z*?6lZJn{IJ|8garjAAQZ&&w55oIp6qC2Rt4iJcV@l$^;!NplVgGX`VfyNqYYfz2s1WYLe4+5b(L|mzGsgM4pmZi'
    '<{rbEO{Szw!XRf()MF0{*C#B`i>5sF1OS-SJ2m4DC@)puQ<7a2A2s+Uo_mrZ)-'
    'T1STn{#&xk47r{ec)%miqscy8@eSz?7dO8U8BakdV7pmzHsxSaEx0M##7qx%aR=$P}gaN@=-'
    '9B<h<Zkvnkp;vv&c(%Msu$HAk<<KRig<KS`QvH!&5vHyrEq-u!i5vwZ)XX<PyPFz>ob}u8BGq~-iaXa|lxYaiB<qnTb3q{ECE$~|#8in-'
    's2JcL5X=BMUPlp#N)leQjyok(;<s5W!UyYsGarsnJo!RDm%i9U1NWmgR_;c1+oZVg%RiCo7JfAsXoSi~KkiN(0^g6Bgy~ahmVo`C$HJW)_L)A&'
    '#7%v2v{Bh=7yPji3?;U4_x5F%p-'
    'z_67O)lJu<9&s@?tkGRq>M7m16H`8qeHcT5XNretW2COkfN%SXDyX)cp}y?y3{7F7b%bG1pl`&9tsr%COSWAO+$JQ@!{H&Jj27G6LmuFAO4}!!'
    '@%A~H*vC}jW}nnaHTRpl3R2%V_y4!=_%f49Q)(I_QDk=_J{-'
    'm`g^zpfYs&~aASmZvpPS({U6sJa81H8NwSL^|9MUH`qQ;H74*v;bwgeUDF!upJE#1x^+WiGP}b?m00SbpSr^!SBlmwzjC8%ve~!EP6JBa~6vLH'
    'bw)9x2SDms+no=nq%>*sriVY2)l41JP+iTl}_vs5*XL8yf5}*<p*&fc759Z9AEh&!8nf*0R6e>x4%?cN%QB~IvTKm=>ZY-'
    '&bU%ZA<_2ep1P0IO$t@f}CgPatqZ*-rDUHTe)S$ZGr5CcScog`6dsmo3AiddXBsGb#ayos^ze|Z!we`f-'
    'MP<4QKgg=G!1%m$OL~JZTxtQIb1DXJs^4HQ{;=dw6k$|TD{N{vZ%{sF*hbFWWzv?D3<`T$A#rk8(C@@EI{<afa1e+V<9qoM9lXPi(Y~Ex3;QD9'
    'D9hx!%hZwbv$YP9LKn6}6GY}eX5<NRJ#<y`@43B6uWt1F%F+LQC0w0f4A8O(QCYn3qv@+Q+=k4wZg%hkK5IB9u0pW_=4omxz#ePoNXqjt<V6J7'
    '}rSoKBz)AZHEpGr{Hx%&z@Bv|4pangU-'
    'PKv8Oxo}4g#|3!n9Z6tO=mt4YTM@c4#KULqZKz$p3Xl?nYW*k#uAd*WM?c5A9V9{y;!ttFTxSfiH=KU`QKz}3*e~U_xy-mdFFFmHhRwo^35`C_'
    'r_l@?7O4@eXV_#>vp_pzz(?B*Shj`?89J6b@!yNB3eQ6bzk~Q8DT}s^!4Dg&T5S%ls|K?@6QLC`@TTQ=LmtWuxBF3aQ?xzUc6O$bSyqlFT^>_$'
    'h1EqI;2J;1pWdD8nMdf*ZH7z<4nJpVP&#$OW$gFaGQ4UV9?viY>Y=y#H~Y0rG7Im(Ri$Ot}Q5WYloP74cISmX0QMf@6(k5dr60T@kd2aBk*@IC'
    '#aIR<$F*e>cGVDPn@Z{w0U%Zo-`F;bwn6DF^q~e8V@nZ!Ovg?oV01@bJFN`&UzJVPj*LU%OWz%*gy3b3;%Y#LQ7q<5kS0{!-'
    'k~9vwXwhk#)0**{edFd9ylkksOXUby$34Y=`Qa@<}c!{hKC_@bQNHo+rfx%W?sbQxqfUB*kTk@K)}wI-BTQ(sTYX31AY&r$VtLpvf7}K|!exZg'
    'is=p^8B~R2XGNf<U}8v_^T0S<7!$?9PfCT4(~2kqf_<euxnhJ>Lr*_=DA&&eX<uT)2-'
    '8=t3cTackd)*2<<!c2&Hj;yEG}I=@i~g+q3=#h*^sfg;Q(3nS15kRuYS?8DlDpL=z{ax=ju+yxknZMu`hko}tz_|G&>YE{);gwg(HrP|EWu%ti'
    'f+)-*Nn1ZXy)U9XmQCX}Q!d?bK!i2@O_fxeKE-'
    'h30;7vM3=Yv^yOVr#3COF2Cd<RX?Jzn5layLN`$h;=Bl)cOILHv`(L;4U?Sb9e^i=R0a;%CkeB5h~GU0`)evI2a*4k_?fNI#XdiuA_%5pUs+FG'
    'sb>VAPv5dLJ{29%$qj?cNx_ALrC=3>)2#qt3`&fB5H|`lD{UJuucCbq6_hPlxUHpWDXDr@0L`FNZy2)#k95+irg}Zh|tK({xkON5y-'
    'lD95Q*aU+!tTdomsWZA5gq~PZ*B&l=wG;Tc}f`S8OOHG!2j4d!SY)dMOfb_##rKcGb;%<nFq%Xx<Q~<3~Q`K!VH@zQ@@=2>CkrnA|VJ*RQ(6^X'
    '^Jr2~Zq>@G1zKVj)LpX`ZWoc~;jb};2S<!K(oaO}AjG8uL4Si7$W(lEm;H`sPj|;k!C`I1O_;^Xt_mtDu6?6H-'
    '7<^t#HO`s;v0koH3a<Nk+xqDz?CeIH+)s<%i9ZWmzv%?Q{lJ}m!LU{3uuKO713oZ!JZF~XPD&Bskso}p^y)O4PN;3jJo)$$@ODn}^-Ng9-'
    '2Q1O_k`Un?1&ub{iJ^~?DRM3St>rK+^=|=b8|pRIlHx$nQrgc1@mpZI=sD|6Jawq_?JE<K-'
    'M@>Ps_A;Gi(Zjf@&fZYU1;Siq}_RI4fg_le}<~`SF`^#}hYRl1O%%=;UR?Ha{X<bLRBO98EH_wNV(MIt@q(HCLu{h2iKF@H`})IRag_^gnA9x-'
    '6y}MWQoQ|E|&KHi?7zPZU7zk)h5_;pC2RB8?q;dV`^R%?Av)E4s;Qk`cwNMz7Z&PrB{Kkf)(yB~wu`e*kp4FqjM{`)c73UPTL%NI=3O!IWq{)h'
    'rLFO!13Z3j`<YTOjn;?y%iB`8avs>wg%f0BYJ+8ct0LB_BL<g$TFeh&=HGxWpUlsSsRej=yxG;64eYs7w|CAvGB^x9HOm?1r`*vQyZx9n7656U'
    's~chsdW3i#|yFU6d5m=#N;?>qN(p5fTXK+Ty+@&T@s9O12BN-waF^qQ?Ml(*En(UK9p0=Co&-'
    'OA^{E?J!TsV!U%(pd=iI1}@f%$lVCOh^Loa1d^MXjL!QXT8&X#-'
    'yEjvMFcl*mW@o;w`ZAYl07fg7L!dz3T)2L103|x`3en#8YesJ3D!*;JJS6C)yg?_7Yo+dz`b)8?AU6{tyqK3FYWH+wA1ZwRfX-1C|-'
    'sRcYA937`625`fjTVCiLC@X~k-uO$OcZc+xr9s_n_O2KK^<B9eyvuTF652a6fveT9ih=o6+6-Buy&!!tb~-'
    'jn_2VDMOo2Revp^^6=edAwP68BB}@Q~Tv>8S#$ER4yspU}<L;;bdO>*VmyF#g9wd_4@o(QQX3`QiLPeoOA7tjo;9jMq9OtRokyv^*#9auwucVz'
    '2rctNIk4&BF^Q-If=I`e$Z@JC^JlVUZ2pj$RSQ2UZp6gTN18G86ub*joB;?5zU911*T2OMkgg3jc#fWZXyL-KPywvl{s45PJu{Rify>DL$j7cd'
    'iKJdd%v)+Tc>^8_`GOzyA^9L6!HnjwPNibr2s>ZB#8r~0k$LjaR27a_OmF;&=Zt^5i59z0)N6&--'
    '}psYt)%ORX>9b)BXi2z3&VrC&R`E4O%Ib2J1-'
    'm#7v=)_7etn=j9o<XRvPd2OrU!^X&8&&E>8~u%IFhQtUzN3zIvK<iba^l7jCG4yr!RrSvK3^xa9cId%4Q)G<tArRD58t3=)lpzsZkaVU-'
    '~G0vam&R`<DQ+u&%jT~U#8K@mt7LO`DI)V()3c=I((aQC#abV9JJg4^}3S<Znpht87lsc3zDb_~=m>%O{<HRVeA0~jLjg8G@&t8VIdeH-BvY*J'
    'HQqo7lX?w$I@Mt2`{~4)J*ODPCg%wm}-'
    '}#IHP9d$Azj+Evbz2{C{`r|?1A=16W+AGEl=G1k#ZLOphBjfuN>u(7SNoiG`&zhB(~Sr(g29CfG<F;JF1c59#ZLd}?>qYYp8mddXVDG)x^dk3O'
    '(ZFr&sQi+Fy<rf;7<SS1imxdV#TcItS0=sC&mbmg(}uxB)yUY_(9I6k#KF=a$t~CR)gkb<u9ztU!V%%06%r7DXrBS2e0;OOCA`eziwT9x&y}i3'
    'x*Kfx~IHK(39!*XVBVzWLSR!)I=wt<TmvbxOGp@lJaoykw}JtL9AGJ0OY7*-'
    'LroL0pVv%RCxlP29Co?Xo`<(V1h~4xyD(xUV17&6b!!bD82!qk8V=QRu;qcEsyZQ(S56lH_Z!LHE9_a#jV4PYR_8I_+*;cJLyY^cOm)IoM4&;5'
    'HO(SLI3V6qGz0^HTzBvfZy}cbHdz4$*~z?@!xrHjx>X_r#K@&;n;itI6$|f?=?0EpO4K^$+0;J>{|+vOo6DSQIN^Hxl&mIaoYTfo5n8m*2|C?('
    '9BH1Uk6V_7HWvmg#$lg?unAuZnxh!nXqm(`@g`i?pD0)0Al<%Tg=04>jD4$uV=qnztw;LOSf&KUzU?zf*P`&?kRfVzrc6Gj*NG6`ln<AKeVlyr'
    'mfm{YOAhkt6ril(}rO)-tvl1K_s_d>-m!XsIWBG3(9#cX%um*Aa111vNN$C-'
    'iSbHy;=iw4k$^URk1)zJL!Kw{%nuO?Md(QVq3l!Aeys&<Z~1XPI~<$H)<jVH5?y`?)7}iezzdr&%710Abpf<#$eo!6AtQjq_lO|(O3J#qy^>SF'
    'QO2f`T@&U$of)~I+OIHmQwfg0Ap5#I4TwcTGs-tZ)&;xF5NKzF59ItLm%e^-'
    'h}@i+~FthY+3H6Uj7en|L?`yJYnl^GVIFeoZ7e*G0RBkf2Dy}`tbPSR=_>wAhQFNMtA(%4>Laj{TCi&sRxfAVhPxju29Nwm0O@R)O_6HwDIs5J'
    '^1okiA}DjKsg1h2wnY6Z~2N{(+*CY2=5#lw(lq`5FP$5{6PL-<JPWFv2(X;Z?zk>RG+qC*{|B?>?SQW`k9@fQJA3(IyClA-RNPxVwaT2lHag{n'
    'C=(4(3!E;sTsM`RlY&6{oVSXABU>YcA82?lgB}Q8uZ_{(WeUoQ%$<<-'
    'r4vZJ@G!5xjT^`Un_M=o{FwVrwhU!bG>UH5B<ZPcUKEHqRU1aV@+3n=EB<$COO&G@7|%8KtZ`$$#V6Q<@Q9mw0Ev9^n@V%wlS(%#;b1x>i$Pce'
    'D_0n=f7XeAGu_+bY@7ODUzBDqF0$2aZuf^nBkkoapNjAO%*0RM>no_kA0`97iNo9v#&H`RBGie7FimmPDocR;xr;>+2}qp7G38nCZER3){hh&P'
    'bd$5$iyLkVtKGH=H*sF!2?!s8wFn>)K?{?!l6kj#J#U?7jX}bo0;C-'
    '_RsC^c8tjessRIxzOMKqp8=8xFy*eabCCHr*^^)qc$_8ysEMOmLUDAzyz&=H`NnGHc(YWEOpKXabx6ZX3OJaEKNj*<sTKPSP<4WyJM#nEdy)yb'
    ';o6;EcAt2P9hIG8uQ!=uwbCnjO*hF(EW5^`;**U(;6<)V@trJLh$nNgEO+2EoYODn@E@{!ZY;290=Uc+{m#4L95eX}n(p3ea$i+jqjS<9HhPl_'
    'jL(tt{ggBwAtRO;&rnh`&=-'
    'Z(rC3uO&bIz8@3G>X&uE=ZNdTh?YK!C*Ug}&VWP^BNqs#arKK9|S6T_|W<ma)?*7VKR$~L>P#3U(=2rwaCvFgQQ^XPNl^&O0<*napJoI1<jXB3'
    'o%f1hz+C_KSPl+hkUOrZabbje!1>`GVL+i0oVFT2zoJb^xWKFAG(P$>+evyra3f8x&FD1=7yc_OuSlRRQB(FUfP4%x0v<d4=@vLfW%k`p4TV|<'
    'xfI?E~Olkt~|B?Ae;;PtPQuVUUMfIvR%yk!kh024qj^sVT|jwn*j&C0rlE<H%aq|Q|<Nn@pS1Ps+gVVL-BK>H4VmQe=Ku?L8D?XLqi5SW#i>SN'
    'UPTD4kDT<nnYeab>#O3MenMl4hnpE6wt9bano-'
    '>rS?O%lF}wZy^^w$2;F$*9{Hogd5JC?a9IKay0B1m3n*QYO3>vz3DGkHzyFy|8p1GT+;jfTl}v0)@c&?<aT*<>@O$o)#8A+(`T$l@-'
    '6QpFsT52yQ*8j8!0i4*{`}>CYSAR4x>628<SVc(dU)z;7ozUVSz=*L`=<@#=HQMI;WkxUuMX0-'
    '=!?0`dtJl9F_I=z98njB5`0W_22{xb>;4<YyRm53puCc8DvXoQ<?_KA1FNH9Z@)+dR>k{QC5=+uhWvqIS;$$MIyFik)6^u-'
    '*QL_7J=Dq*hg?;aaBQ%fVoyhSRnt2lKJrg)TgZFdrR^K=XT0Mrrv;Nh9u=KLo3xa2EM(iIFt>q?F*d36g2a?>|ietJ(QLyiF!#@o8dRSlp?Lb#'
    '&WVBQNw_DQ*Xkor}ugfppTh<X-'
    'hdP>TomsZe8@n~Yvv3Z5qo2`n}xh@Or5JH`;IHYgBw5Q42|T{)KRS@wdiN>RAVYoLSaBBY5Z)w}9R84^JE<i3>|s^VT+JKFKw4E_3dLBEtDp6!'
    'C_n3K73r|E%u>#kTEIB~*h;I6Pak(wtY{i}1bsWmmtSVvwIUyRw(+bqyJHjB5atbenP&|t|c_kmv;JKVNjTGCY;Y$?8Oli$?XUzKU;oI%Sr^(1'
    '?0a<_9#F9~H<O1XTa#0mTM%w&h<x;<zRCg+7-e|TXOW)k*=i0dz=qQ8&Cc}(MHp9S}6l=_$tS(yCfS|)~flsS>YJpvWDwyCq+%jAthFj-qyX`E'
    'V4zCC9VJEe9v3saW_E6+)m#A5Ukm1gp#QZ|Gv1)}!$s~F=?%IT<7Pe(E(W}DLYxZZYgz!L`Q#~-cY6jezEsJPPq&)&N&w~-_Zg75l@RJV-'
    '|pn_Neq`I`&s<tEul4yYd768R!>u_O7AW3Ek%*4qAM53!XHfC$KZ~L+~Kd?3r$Iia4%@@?4%$KZtTrwjfBk}@(l&X))%Bmz}Ts%BHJls9}!dEM'
    '#Qk6?ZsrAo7=azs$CL3M5H*WJf3~t;?eoB<w98pK!)HMz+Bmib0KNUgNQ6g7zk}XX;)(E+kaG3qx`1HsgjZfR7BV50ny;>p!F(<-'
    ')aC+@5Frzi7lgH6jW?lqcnrs6E2fYrFf8JojLOrmkM`@r*<&Et@jpbv?BhK+=o53(>4M)8}3jk?1k4R3oH>Re0K;NTrzprhZ3GnH)M^ox;1}o1'
    'qchu|bx4Va9px%N2$W@<u{)T{11law4r)_teMS<vHZYzQcdp@6en4h2|7%5#an@nhH$~DSObpJ%Mr50m&#S1iNRUuF2(oQwDyZdO!JZKM&cl8C'
    '7pVIP_Cs9&^kI0hM@{{!j<0kHKM@XWQL=7v+o)tfb%sINfG4mACmJx*u18!I%1K=@lE~7<ogLgDY23!eG_MHg@JY!n@m6+h7Q1zdPh7V~3pQ-'
    'pJogur);D|DtG||gAO_N&pGP%Q;U~v!x3(Px)8Ai}0=ec;nmzH9rEXxK0k&>w^HrY8shD9@kT~D%M#DDUaH}(vRg@FP^Qye`hSq-yyGBRY3E}n'
    '(&S7UYNIZGs7z)p;kPF`Qk)c=&#^~q_<y`kj;BI4_tZ{!yo370>qj_Rqz+V`31wUe66aR`c<M+Nf|DcdjeOx7+*#J3EiAl&B~bNo9wpW$%sOn~'
    'm=U&G+`i0g#)?|0+p9*l~(fwl{J2BRc@sgi=9OJ*Xpiou!2`7oiGQq}N{D&V21on~N>ep>`{IaL%Ey17KT(_-'
    '{G^P&Z&xuS`ntRG+e$pXD3L}#(vYuC3NJTAZe2cDOYm_Jq=EW!*@&ddsUV#ROi&?vx1JAjb+9bzcL@%;d%3EVrJ4%U2)&-'
    '~(87r_G9q4kIT0OoaQo1LAVKY;Q_I0r4sgCByBKpeTmWq{$?3jEnh9B*+AOn?+kU6M>#v%tS1izSw*dV_(sBj1Uc*;r9a&|G{-'
    '(rlN1dJ9^=;og);r6FH)DPob+z6v*YVu8p3<+(6n+QI;IfnfXzZ9$A|iX+0bLcqH1gBTE6&K2<Yh`Mrsc-'
    'N7)m6lfOe?0d8@&|VOcGQ88PUoTf$qSZ1KEV{rGr3cXl}@%Q3w|riEt0JhC=uxclS`A~)$!&eb2<_|C5H&B)I=7#n+PNQumcmrZ}VjYR}igCM)'
    '0W)M@|h%WesByI$s2Vbq$!b;7*3oz1hsV1VJ7~LGDhd@93BkpuAYR6*-F2jsPX!GWbJ75n%u_tV2!!$8j(5GKZt_BAVbU55*F~gAM-'
    'l0uTC1I8Zw&c?bvjv&y9f0x|_|2%U{}K<E%JwPZfzFMS*VgbJg|GfFPR^RE7<8jeAd`aH?YEW*uMBvZ>>qxGk(OuT8fD=U)}2;4Q)7Y|9r_K&U'
    '%u=z<$8aUQ#HG|WdP;lv}$S63rtbHcqqJlX9)oE>@n{fAcdWX8Pn;<I8f-8C-uQmAJ&JOLteye%1*V0Y!x7C#cI#+Xf;TE1mOzSLT2-'
    'Mx74nuH(6&{_DEmk=MDgi#5*eV>#4&k)HD&0HaCBQE5>_vDkZ=Dqu>%zaIJj_Qi^Ge~$-'
    'eIku2>cR2nps{HEnSk{5iZ<cmW&D4zkdlligSVKmHWo>Zf@ME2a5ub989O5@J+nhmltSt#epUy(Q*75r8TsC%h$|WNAdNZT<!cKXB;1ELXyP^Q'
    '&D^&=M5;DD8O`p+LQQdca_1207ImZ&;yYUy<R4>AR;eJgawAkGj35$$D3ffoVbxV8rd2vTEP_ofJQi{=fA*eCvR}_Yb)~L2D%`LtnoVX7oHDTh'
    'ME0aphoLrxe$kA3#RQ^o=x@)rrEd91&-'
    '_zpGklg`Yrfgvi+W*B3i?reQS>D9>onqo4p4_9B*5WDJvGeC<QiN;JpHWzH~tmx^m{0LyanYJaXw?th6%dPT7i72klm8UuUJwOwbi~5M*Q$$Ds'
    '0O)K@Z^a0*Q&#zr}rA#)^&%ZyNCkt<i?5~R9hK>2dl?uu}`>n^evG9>yY4ON0m07zZn5^(kOiUncgt%RE7iUisipnH{1h$)uT7$y1cf`}Q8zhX'
    'r%FHn?xLDd6Jxwj~y^U?57VXZa?=noIDJG%tQ1T=a$obX|a?{AbTTzY_c&Kg24JH}E+rsyi50VqnKmZxvEG_GqeqURfhNYJ0}Pufnb0qn((>BN'
    '3%tk-{3w_UnyGM`?E%dcQGq#t-hRuMB)&hRGN6isJnJb~o4P1!+m=3>;TsO78<Ep%$iANE%G6j+grRopBksql0JY@9fgNxkqd_GmO16F0KKc-X'
    'g_m=4Ndv&m)-T02hSfWMF`*}yNC{5>-'
    'wHb(7+(Ay#U;GHAc5jIOWEW<PR`&9Wt`H^I)9YEz(fIqn;D2yC4{M(rQ+Mec3^CCTqQcOiRX+$@>H>cxd&vCv(v0B8?`C5+6&m(_12fsixvQjT'
    'oru>oQr;Rmq>O?Iykcd_Oq^LXU<F`mV=b1ebLDkgjq->1Pxb+-'
    '6XtJWq1DzL3X}A#=*@$I@?3Zj_!BQ!R(QXjlII{vA#)MXBIcRu}u~^GFgb61wCZXX_w*3>3*Fu_!H}u`GQi>+@|Kviacv}=M&Q_F@s=f|*68MY'
    '1%#7l~az$<nW|T4A3dFOVq%Yb5G2Px9&RutUGAFZ3rml<w+7KoYnKZ&moR_HuAG?#`_g(lqR&{yFGL$!ao!(%)Zx7y$4+r*{^y}#nh>y}Q9pXx'
    'l4KqAMQpM%Orv_RbCix~fOOPLB0WiTCrBS(j85xTBC7;Z(2yVnKcIj!Oj6e{j2UDI9A5uzKlUk`?NDdmvtCO5vK4%^Vl-'
    '~X1S$=18W#9Nsf*o*ONI(=9-eftX>HQ_R+<3xkQ}V>b#8a)ahX4Y(nNx7kdFiBi3^7ON5tSnP8+kR2K2T84ca8bt3(HGckO&e*8j=_Y_-'
    'u&q$wgJpmWlh6B+t*q8MArP(3(-u@uEeRz*N(_T8UQ&k*0<x$H(^Ij7z9!j-'
    'O5~;YkMXXu*c0m18m9gM{d#P^J}I<uv}FI0;f5@XwR(NXhA+_8$<R6>o?rN6-'
    'l@!vjeui9LZK>m=2HPQ?60d3O9Ybp>w`!B}h{C9>|OW>j1*WW)HqVlEugx4(dhvsMLPun;?_FT4Lj-'
    'X?&X!KK`YpWv!bj2Nt+mkJZwI_=R!vI*&N<8{0|-@T>gEs!s7yv3$VQC_F%!8E7o+V*;5Yf`deH0_YrpBu-Uv1La|Y3H`T=PVX8x9@#))79CCT'
    'ObV3Cf50k1Cl(`BORjMOMQOd_EPZ~Axk;i_IzYbk_^1<8L0bDT@|#%2pHA@?HE~Q$I(xgPL3^=H+_v+)KIEav5_jpO8vN^Bq$<-Ah@Z-'
    'Wn0syAnOp|KMAx}B1X{Do3Y2*Uc~npDW9R=ng{bG3X#-goO8G4)b~tK0)qdZJsOGGN+fU$+s4luNiMWocsAxJc4T)B-'
    'lY6z`Ba!aw1tnSD2Fa1ai^JJpu7FVXQ*zl04#e~9%$?Z_J`i=<6gIOmhaQ}lFZO5JbJ4;Y7O#-t&?Gy*QFJ)G}T4O1ZNnW<v1r6-'
    'JpH@tZ5HS#E@UM+4_qXt=605XLOz|PBAB4^z$0@ddK5I>##i>iLbd@jPPb_%|VK(<xD`@6dye)(v~xB(y+wf#1*-'
    'JHn5M|`^l{}%v*x}u7&N!quy|+osD}l5kUhjy4TJp*YX2KnkaN|##Hfk+#M9GR+f9`Eu^>4<s2HuU8;QO6kq7UDH)E8pXG=GO$$v4VO=Y%8$M`'
    '}YTB)Vu~oa<KD3Wp`e0Hsvo^atFr{3)%TxzTYKPEx+9`$X)3+rCi-'
    '<m!A5#31DQFle?tv7<E>c~BIU#g^1J%8LE<9NjEoEpR<P7~grB8}js97mA)QmC+USjFwRqAHwp0ErluatlvbKpmwg#h=9KL}{k3&e7&><LQx0h'
    '-Anmz5J)lY0z&7R9Nu4jwUyk~?_{!A0rPWR}_iO-Mx947tTT#A(it{>K|1#1R%pkpnP?RvJgJT9@(R=KoxcfPq9GC>uH7!2+ge7lyx%Pv%qLIY'
    '%HqB8rD|bnn>JxeN>5wQ3f9$*EW|0Fg;X;i@2SL%P*BW$jd6pezj*<4|kt%e#Yv-'
    '6sVwa0ELzOQxgzY`$C=ELx;b57Z^{0G^x|bnu}eWEfkPUKw06J>MlYUzy8{7g?@P{3*G^;Dq$&4wKddZLMfhqMpO=fiK1$Kh&j#_?d7JzLi~eX'
    't7!cYf}=90Tt&7kP3G4LhI`CPVg_$V)2`A3`r=-'
    '57|4*7O$s=0U2i$5ERDI1O$c5#yNwZv^X3h=H_9rU;>DTe$}7g;JI(`MNjZ3RnWn)8d0=r5V;8E-'
    '!jLd1qK98`F@1%GD2@{<_UG}U}!hGTmWi6Mw?-=5Wf;)hWLw54mrn2Wu&az1ry=xPvz4q_9}7UOkEO-'
    '0kYt;XBKt?_A!So7}E%mQ^#8z1YyVXKMvf<rwXwwCDr5w)Ax_Ceep@-o<h$NZx}O@#%6(+cEJq%=eO1?Sv4oK!O+-'
    'c+z*2ZV45ts8=QvD+zx}KKOGZ)no5>IhL6LBh%uLRO;pmDA(2Vpwxmz&{U8#j;QB8a*%&-ZM5S(TgjKVUD26R1YE-9Hl1_W${-8A+w)W-'
    'rc)1T-a09biCu%wOH3YxLxu#Hi*3&}HF21np1)L^`oInuUycox}?1T&D)*&z9`A`60dL;GJ7l}@M6vPu+`@(QbVJd+>L+OAR-'
    'r@4*#tBzxo@O9@9dM}8HsK<@a3&uy*W+FTIo&N&z}O5!;x4zFT#e)oOM=f$7h=|E(#vZJKhW5qr*d2>?a`R`fLiZJe67fejKFYX4o!pKYrdnzQ'
    'nPY(gmlp73-l|&rE^gr?sNcGt~76+dQ=SFIIi+>U{yAm%8TT2f><|cAJUy%nKXC$V-P6LNg?4gZ<l1#<4Z)GM}Vb?FWW0f+U>liDk&5nI-'
    '!&7J|Ynb<e-'
    'ugL!2J*#rsQ$2l8U_F!gsV7*~r%hEWeoe5LOM>o5B7?}Od|JEYsc(Y9y8k|bVUklbh_jSKuAWMuTan@YY+sr^EcvExLG_nv#}PKoF{b?<0n^g2'
    'uETEj(k8~3i&>W@W#d0nFv9(9cnYTfVgj%YiXr1=~$L}rjpLS{ZDk<Mq{8O=UuuugHDkzS>it+3WgpfHv#h|sQ8QwMHDJoMQUeY9}rEZmoP^OL'
    'Z6P(v|#1p|Pt9sddgfG(Ca&X##8Bm=N;BN#L(Nuj|r3o1{2X;2lEM1>5UPwpOSuCMxw@WoGj3bH5IOo-'
    '$_T?6=l5L$l~hs==`#hx~X%Syv#6ec6Qi*96QUfaE_uo6xl4n{~-tpPX2*}iwf?=yU|tY`#^dev|&8YD4-'
    '^5b^&`$Sx4+qL~ygzI^xO}fvOU;|}rv|k%hN+L|>orLtGv&N?c@$l9hgS(M!oj)zb=kcVAr?I?MU2vu;XXV~L^y5KmbTa5}{xqPi<7(iE8}Yr*'
    'xZl6$-G0cu*6hm-6=5;t$P1%Iho(TOY~jxPeIe<w_jsH1d7m)oVlUI>-&>Wr3p^jK^>mbXAHz0$#w+==-'
    'Mt23KuC!!)Zq{w`LfTiNs20V(WeW4n1tNY<f*+c%DfzNKv)fXU1f%KhU<qeC~sjr;FEP8qBG6~S1{$Ly%C8P%sUyh@AeMImq+nWijcH;BMn+jy'
    'VGgyGrVi4vjk19Loaks+$ma}W-|lt{Y><7;z!%$rC%tylx1Tk7FLGrm>~4v)WtGx#@y)f2<wki_tNuSYk|6Zoh0%W-'
    'fWf6m^L8!TvtEStmgc4L;cJWg|W}Cl+O)$?$_#PdG7Dj&+^>gtDoh$e^5bVg<#m{AJyLS=Rc{vhcj>L?t39ai;A{}@;!yOJtv|B$r`AbYp4wb+'
    '>yL3$-Pa#1M=h$G-9P2GH+^3i>Toid431Xgw79a1RJbRQYqNma?J+^p6^B1qubz^%i!{pr%~U*SQy`1c+Lz{+ECvC^v|VsMGR-LB1F685c`yvU'
    'M*R{OF5)(4`a+VEOCeT5OUik$A!q7YRMpRj<{OTsNHED+kH|$yQ+>wQ*x9YYSineMmlAs3W|<(+TI@>rACSK2o@dYsD%N|sd3^OOE1+g2~`)LW'
    'Y30sVGkd_6i?5hnSMx;pVa)Q?0o+U?Z(<qtpnqy`VV_b@QcC|-dZo}yPCXp;#OgSwvvNnw-'
    'y>FXsj2a_J)z%8%4;yUX0uu1<1W#h};{6$i1FJ?u}yPUe6=<hLPMGg~`4CAmrXKlY7HV?u}yP-'
    'Y7)wjcjsnlp^<rp4{nuD4{>1{FVAX(vnjcvw&Wq(lLC_PbH&;KVwd-sxnR^W1NOOPQx$`aaIoK0K`||il-'
    '64aw2J9Yr<_)OKyvr$nI+r*Df_#LpNDNn5>aZ)(|Iaq$f*fMi9Ap(Ux_wWx@9|pmrhMc!@WuV(lAp2SR%yC++zzsu^j2tqjSW48nynoHjz{A^1'
    '=c9~uyJsJCoH{m=QkD8gl3J5<aeKGiEL;Qg&{E#e3RVi5Ve9Aq;JSLnW$EEi=zERGESW0iR@N6QRI0Nc^O`R?t{@t+78h+bKDBug1m|DV%-'
    'zM|tiZT!<)>s7<lOlbG#v>_}83($B6XHDc31W5Vt$I!yhx2)>YU5;!iPVq85`kl;*lcg)GQm22_uwICrQ+zE2E5k*8hyem?`%_j=FWy(0Z-'
    '=ya9s-#S!wKDGw%IFb&y)P#^v_c-'
    '6kKPbaPl*$cTN9$D!_+WNYT_?T;=H*?fQ)NeHN2XS{InjV)jIrf_0e2%=h9Ya;%pegjE6suOp>gk!grvqhL)1;Sw1rf&ol44I6@#AeIdGGF9Em'
    '2r%%JAEcTF_qu%**$fR%iE?VN<K_iK4vGC&SjP`>m8*I1(Y<hHGx`Bp(_O>*<}K?7=jz8K=>Uetyda@e5gmqvRnX)E&TPjzMW>Dcl+l2)rp0ZL'
    'By>j><p(5!D^9NJ#c?+6Df)E``-3)CQ6;h7ShV2|Rk;{w;qy6M@L{-'
    '|FXGgyOFwjJJU9govu?wGr%N=HFir`4HVIKk3Vn%CkjxM9G=dc=g*mZX7S@KKkFG4N!S!)QB3(Gb;v~H@?;{PnxQ-'
    'F*!I9me`L#XtgAp^nl5DC}sb%v;7#Bklz~WkI4p_KYKhe~<@!S_KfHKu!AVLt=K!McHh=X)LbZN}!WtfbFzi0JR6Yi*&GaHiM(dA7aG3FFSOEx'
    '%~4(qdg3qws&;e^K%McCcelnp*-'
    'LzpuUk&l5v%{7)I69ZcpO%26F<V`Sc0?{l<a}XO6h&h6_W`kl4hnGCb3W0oS2tCV?JJ&S}Vs>K~6}S+N*AF6(#xlev!eRn*-'
    'pQ33OXelu2=aakZ5m3OhTKLAII#>GNi3sdJ?^O6_~drjBN@LD`81^fk>X?dJ@IffLHCo@_>L3{F#v(ziQ@-'
    'Vh{<0Sc}qEp&t<J!IR(mBYEkBH6ct1KH?Pf#FY#$p@EU!@sNVi^VM@Z6YslSbn1*(o|5RH2dZ=D!AU(3nY1Mv8sV>43{k2)*LvXxIz9H-'
    'ShO3r)0jkzBjkC!YcC_*?xmbaO<?Dn6ZIgzvNuehx*or1E(ZG1H$(&H+qAGe>$$QI<%_;Yt)PulFP4`B2_eQ#VI=3ac1{C2FZA1|h*ZYgGPOV1'
    '5FAdSGz<!SHsZ!TOyttzcV6avEC-z$-'
    '{*Biskj7BPWc3rIpYUBof`hi<bK*JYYKb&7C?mAxD!=7Q8ncl#W<we@tLdttXie%+roN3BbmPz&T~|4?HnOJ80eO|xIdi=Yx?a9(*)4H-'
    't3oZwYVKkJ%N(?kjM~`MAC_2V(iM%=*>hYfMjJeO;27Zl8pZ~kpq~gu-'
    '(4o)7SK$0m45YN{W!!3VPOYOTt|N6Sf_{=7r(+_d7I!;$)#A;XJJZw<1-'
    'zCs!!JPzHIE~IOR7UYG%gXMC1@UNq(=hpBl+e4fd1B{m4}r|HkDN9m9Vnl2zKYShJpq^pkE-Vr;>Jlp0p}R$@fiyp$SL{wxS$1NVjd$(b$D*oe'
    'lq*t*B<e#}zJs$RK?MU;q+(XBJ*b(*ZMdmDG~{A(BfM3dnx!w~D$K(7~Q8MJ^Gi3UJkZpxENVNpBbA_T~;R;;>`3q(V5?4YTU*k4)F79koL{o$'
    '!$kC+YVnk$sYh&W@&Ez+}5lURp<zTf^YSPv|B>Jn()pcy^%oDehjT647cI}x$<l0VD=awP8<V|you)<OH{H`c!`9gr6-XYTsY?&R2-'
    '2GIQDO=Lyx)iQLb;h6+g_d-ldB<FdGD+9sYR=`cje(;GD{R9zvO544qZ*TwW|NOsU58l4CDsxb_fBW~}{zrf-ShzC>I$_a?Y7F8rz~fN&qqre+'
    'NdghqvD|3!+y7(1_3+6da|IET>tUN5AQCcaJlZgrEy*x%V1H+y08w|1Z{faywIfY2z+v#Fy>HXULB~gWnmQ!7^2UKb@WC*uGW_k|VGw4SPx{XT'
    'Ag2HI-~PMBJ~*UOhkp$e>)y=K>>m^Ij;6-'
    'dU1R)GyuXd7HxUGQ*H!VZE2S&UTGw~27nrqZ*OgfQ%0y5~ZqT|mNuBmQl^C^=J8E*);#Apm!ztC!gB6gs7EF5#Ook9oOz(OUAhafj97&s0=tV^'
    'i#xZPn>XGFwA+6o=eW^?)^}RPNp}w^x)QwB1@0Rb&mr&Q{e8J5nDy!fHN&FvyXD&&3!eMZ^xCpRLtR#<W6y0<Nj!itdb6q#Y3<yR2HeOaULhKD'
    '<SSkOG$4f`{$0eM+OTi8(|ALkJq#uZxPX37+>!jZrsgWA$NR9MJ4b4c*z96^L{1zJ;<d*TT`sjtG<4@dKy>Ql-&l8als}Ai*DfdURHB^-'
    '<lZHeh0=cC9nD;Rf3FM!PrAM-3(l>M|{T@ng_`v>tZ|3+PcPuQIgHC@~+q5Q*<-507YBkPy$ogMh-jVX97oq1~LW2w7_LR&?1?rHMw1(S#HWi0'
    's**RXw`2%aLzA1+lAbY_|pkgWNnG;>_6v$3l$edd&PvUMWv!GIMtYFqCmiN0_E}N~8_@$wXPy0Lx4&#G{V#F7I%C;7kE5rkr3?D8ZM=NxG>=;@'
    's2fp=mS!Dh_=L+d%6yOwV=EX`6l*;1Pq?#?u;Isnf;Y~Zpvpf>8jz^Q_!0z;#HsPVN2zD4CPq-q$;6~sXj+>GVt6BYC^IdDi>IKpKWe5x=Ax6-'
    '2N0kmM0LABE;OyCl2oaw_Go%I~VvBS>yW!lOc+Tv-6OxlkZBk0YYPopegCq;W$u>w3RJ6bsTcH@Eoo5_0<oOowDPAz*n&y`#dW$JfDutj(Qt-'
    '#XH8oLj>WKPqUC$SJh?bQYSU*x2DG8MJycY`oq)Dx6S~_Lm><nu<%I?tQ<Nyftz@u?He@`{QC^^sJ<eZ`kgs@XKqPQBQQ6TMmMhb|>*je$^7vE'
    '6*^R&c4QhZ;jXkbcJT-'
    '7JlPj5uZG2_tr6dNS?rI^3N)bhsbGYTs$ODbN%tkbkfXQ>x+4lt*BH@F4pPG|At&??3mIvKZO$?ypz%urnvwJJMHrN_^5kRWrB^^hu|`Rh;G>X'
    '+V5z!7Sz+5`pW)Ys-'
    '3r`0k^>lFxd^VVl{)3|!DoYaPF*~Fox=TkvkuD2!>NrDM#d?aFde^QRiid?Q6SYd$K*#jOA5F7OIw+rV=y7uhpl#iY!8CLZW&!_1c5c(In1L#u'
    '`^f*|~W}x3MM$Si9WEv_E>lA{Z02i+AkQM)Kx=4r#ZHu?**6+rQ^`@`Pf(tHscW!+#Tu~z@#GR@ajgIhg`QJt*Kg@N)Oo`+(lE?#sFX6IhMwTZ'
    '^rL%7EWJ@$GRa??Az6`?HCR;D4ZKk0~mXfJ(>T{jzWkognFV@UlSM^{ODygj?XgSfUdF?D%uGkp#mOVThH_=2uYiL2InkI)+oxJ5EJRk5s=R3D'
    'SI29~;#uT-'
    '<NI0yx%$jD>erqs9fZM}92(47PDW3mU7+mX}vPreAqSc#X=Q?5?cBj@Y1uEgks?t1gqvdR&TxGus#PpF+1uhV2Lax*}%!Ns=_o?zP`3BeBu|kw'
    '-a+#)u)(6u_61(D7w0qc^Q!G7`?1x6*e+>0XP)+#uvi{`S$X^Y8I_rW2H(R0Mdg)I=VzJ;Bx;D;0tU*z9<+y47ngh`KT7%Yp@m6cU*jQ)NUA7t'
    'xE)}}El{;LO?6#=L>Dq5OW7hgtrtC?h07=+V0Y^P^f{3gKkL-GbxrNnDeB5AO%Zm4Kqe<uyA1We|5J2~OKaclY!{+$Ne%~sDg|tqhEyq$Cfc;)'
    '~v@R6)vS4Et=JJFbZvE$4)x*@qEOk?Vaj!^RV~1Og-28!0Fh%@8_3AlRN!Hqpi=}(pS|!AFsvxTR30Ep&Bf$c2Ag?M{M^~(E8-'
    'gX)qaFppM;RD4IDSyC41#VdCz(gT&kcfX<iDos?-JwT3!>=j!P6JHrK`wzz4{#-'
    'sWpWTgCv|;xOLt2j;_Pt*1mOC?ahyB#&VI;`C@Y|#i_<$o~bwmVnJK6zTcLm$Biw`dXg)^P_{vl#2$!L=_6T|CCL(Uzql8>k7K5LGy|Quwl79E'
    '5iX~gtBY>XMeHYvM6qpk=TU|E4T!)j&=ZT>e-'
    'aNZW=AdRp_Oi4rm}p}`LR8;2Cg&RwucsuiN^)WWj)s{aRkZ4iyz33&$LGB4NT_e8HFQpR&LGaf=N+hwa|B?Qf<HI>TBG#{h++#Vd{&;f&h^phO'
    'R%QPdEK$(ZuFrA10n^T^Q76U!V_z3Sv<w25r9w^<sb-'
    '(X7yK%Bl9`Hx}EUA`{7F6$GuwBr?75vMC3r1w1S$<&^XdDEbVX@fw~DUB8L&T?BV%Y<XbUg~t(s^LK;&a*Ej;-'
    'A)iK%IKUOTxc?gpmr7#p>^HAyz{Puvfz<7cFpw)+#VA^af804v+xkrqi}QIUV{%4e>O!MQ?fnjL#e*`<}#w)k{kyoAa$P6^z=E{PFXANm*HLYy'
    'Vui|;I+oKi|+hWX?%xnB3QFdC{I_+IXU8&%BN*tDpNkTnMx(oMKkPF1$4_eP|IliU88{ECdRu)+4b0+LCfAh8z1#L`|a-'
    'Gn0gB(OL}abnaH!+DC7q?7c50Ia|HI;fvqTa%dcge(#)l51QyG3anO_<mK%ma$nQ~$s;ii<V`ZgbOG_c^9O(ymC|KX{)j~iuq6_-!-'
    'O)I#Fp5hLd7r&DnE(}&bNCOilF)M_E(c=3Zp9-}u9j#0Sz3<eee;dZ$LEUYAM9a9=h%PfgLj@;Za3qyq)vzCQ8hvI-'
    '&l3C)L^i#deBR@upYDr!_k@!8{{DoS6mUX{Q_%fr2IHA8!sg$puWJr^un7;j?_~u__nYtuLj|YoyAyWwZbbv`^gO#ZPZ-%-'
    'HCVO%;@3k3a1bg?<6>=S;Ns_-0XGV1EBjYQdb9fc>A!MAhFD&4QMVw=#H)(AE!b|HdTS|0F?8SxYYaSDR-'
    '#bW6|KZY0?Nv1;h5=TICAbn|N9`Kwhva&edwxFJG$s_Zj(JMa!FvAr=IHUjP7a*ZKtjNHGuinS)V;J^n)2qv<1pa$bzj{-'
    'WeMP*e<+FO+`FviCZz@vD-'
    '&R^2WQw#si>x{C02?+)|K0I{&R`$taWqL*bCz*`GTvU%?~B;VYX7hx_r)F^TPP<$MP<PpT$3!HFjdA@bxWBQRn5ZsuarRXSnb5Vp|x^C21+lDj'
    'jx0>zNaNHY=TZf0$U3KJ52d*YuGdd1{4EzIN)tAdz%O`oxNxH)|AFJR>9dzNw8?_EjI^$NCWDOuy(k1&DX#O0DFv~#@vOOSMP<hUiPYy1ZhoHk'
    'XF?H6$yYOb-Vuc`C&#M66Q4lRy3j!zTaUA#YpK8W6rmb^LyE_^WT8Hf+Kui*mbbF_7)^?^sgVLUh3v;L4;5NhIFg5XZCM`T8P}zDjwyv%Ut&;m'
    'M7O_p`s)*?XHCf`;XEgf|blG!E4X52MXBoLC{=%E}L*S`jMm21*k@c^PtpsBuQ@(1T(GmmESzZouhu{@LFv@nZy$Nr-'
    'g1;k(z8j`GiJb2$p1Ma3Aw$jzlP?4J-'
    '<EDf%NWz=`FwsUctOQW1!?7EFdhwT(4=^1kt*;MV<?dpVbO<pDilw|wD^YezVVsgifw4Uv;SGFN(Ot|CLEfFg$?H*Op)!hDi;o>&;_xI<Yhx&k'
    '{QWU#LJ!i)dBi&Bk~Q}&q<Pq>Jt`PKr1tPH}jc$gK0KFdjx7?*<#@f)-'
    'Q7=*XWpHUAPm(Zrb+UZ+9uFqTP_z`NF)u8H}*8om`IF4a$HU7ZFR3N#N%_AsFNwdS*NJaJ0U_(er036gohDqk2!C#6c(RlKfJ3=g~wfIxSo|<F'
    'nT2aU>lQeQS3)YwUH494y7Lzeu3r20q7s?UR++p?elAhfDImQ+xysMDlt#))dd8_$L&X?S4-'
    'ZmS)LcpbwP<pXyD49Nl#>%{KC2<mC#t+_Cl;@AU&Xe$4IC!z|)h4V6A(fueoZ8d{Z?RrG<1@QR=;|CeR7uqJq|&{v%~E{SAgHo9)5!F>R~t#X>'
    'l<Gjw7ih(Tr9#7J;qNP}CcD>|ZvCxa=#-'
    'c8q(FcNPU}bdJeh^ivXj~$QIB4Ue>v8XWYsl;HVR2n15+6JBBNw(aw4UGaKV}<si7_n(yX{{FA7U_p!1*5!2&KQZx+k4ZHN|MYfS50AbL7tEz@'
    '^9SsN?w`;{(rLQn8qP+mD50^Ajr$Cv4SQE5Z5rxZQa--XFBP?{GL%t6}e8G~VmAJFWfd8m~Zj<DS4q9knE(+!XDu8!g_^aqRvOUA6a<bydZTP8'
    'n>CdYI5ew;-gDYasuj*`CcPaxC1<2qenOAat!$Q2qu7cBexs_Z}TbI}*~LwxbyC6CZuQ-KhxiTE34cbeynDtn1$HIaAEaP%ckTIrpMCOVbdP*m'
    '=Sdl9l8+j&Y8g^pHNwjR|MdlIWYvb^?*UNxetJD+S3k$=jahiiW2I-'
    'FzcpJN@2Zl%6bRRe<jvC>6IsIGc{iGY|W)w>kt?KDYg88|4%^G+^dL3urduiCcGIJkq>o6=~XC-'
    'e?v?XGi~+L)UjhZ=$}3GRR*16uMXFSK`cv)WbxJpE8m%r#1u>YiiDeg=R!X^)Y$1?z{y^q7J8i<5uZ-YT{E9liXT+yx%_D`u4if#F@LNPB_olS'
    'h>*`x1}ut9zGTwxuN@e+0BE_S$a1O;UO$Gs0W(F!E6PnOV3zH`pW<>Wdkn;5<gA^x7&y6UZ2eluN^dwSY%q_Jy67<b|cO|JQ*CkF_9L#2SH7}<'
    'V00nlPc`tQQkBMn0>$8JjU(aRLm*0iEE2P8M$-w4tGjd*rI}+nlvLuN#FL%Q?m7N77Sg;==_kX?^-<S3(}XVj>y5r7c5i-g-ruBbwPq6#dfJ?8'
    '>`(HK`{H#k|u$Tap#~=V5nuAghLQSiOyNcr#-l-'
    'KXPiL5s(N|MLqzhj<*2G7rWK09|bj&+7pkQ=ztYK?Dm@#K{HWD#2Q*cQ+%g)XYM=*7t|Z<NuoxxU{Gcz!ZIdUx$Od=saY4x1+=2N6feDK&6z)L'
    'K1z~Vm1tWWk%9+oCH6hu6`?AEYU&;GN8sR|?~)@lTwp;$R>l|p9t$N;o<N5izAb=~@u>~^O1nGijWJndYfuwEwMXNF-'
    'e7EZ+sEUBcDFq|dUC(3JKIJ)8)GAS7r%gX*ZPE(xaToaF-SuA5@F1-'
    'FfjcDQfgJMg^EB}&v735GyaK;CGoO^juIT9<v@o9omJv#9{DMXu?x@zD?*K_gH<TLN0{c+nSBHiGoT;<f;%orF*sMRcVTJfUDSJ>nJ|;?ufvY8'
    'ZG<r&vBQkE*7hYWGlm8Qwk9Lmghf-bN|qY;-7Smgd$H0MUt-oBEU+Nc4SWi`<{ID(76-'
    ')lr=1ZuK>2s;@)A&FhgZuRLfk}2KnmxxVuTHS$ChqnEpr!J7%?DT#ptMDm`r3#jPY#h$e<GebmE&HyOqE8&c@x=X~iDzos34kZncUQzxe09_-'
    'BFnt2M<;IS?{rWwkB~e7pioR6y!J91qWi#4t!iaE%qIRJcvMi({={C`z$XDod2F4b(d1^az>cND-'
    'OD?4SnDsZHnzXDCF>?6(dM2q>rkQBd$seATdI3tSou!c?2r?&PC*c>u~Q2fa?GciI|^kpmIr<6|V5K(&9<U`4^XgCGu=^fAU-'
    'Ew0I|i5dFYGYf=g%0(S4UWVWC-TeUg6aN3yLC?sXlPpSN1+M4<f?9gV)E7k|UB&&A^!hW2T+}<&9T)-'
    'gpa`))!Eq091ELDO2FLb$IMxHY1&IE3_prJq#q;hPkvt9}(7c||4rZ&3=&aMSLDL@ePDZVKa!YJ#a7Cdn5>_F<jko}0`%?txDz>(vg$$c%7)WZ'
    'LB_yS`J3BQBwF60bkh7eq{w2i7z;l<-'
    '6er^$Y*;5wXp*X9SRm1~&SAQi*1GVdqV)<P%VTHcgrdgu2s|x*Gs&ViJwT);am`wZ1$jykVKQ?j3BuZbK5GV;Ilkw+!-'
    'YF1Y{y^pF6p7JJOdz}t)#~~MD5JobFZCGUJ#B!mWfwzj7DB>ir2r=%wAM*IaMt$MFxX$OF;40pPPBciz&}R_4_*rCLfzK@8%+Ff48#{@l<#f71'
    '@l>gW?#>OcdweQu3(#YLUQ)In(>?_nFtnzOGhbnWIZ4$UL?Bh1GFk81m~b5C(itsiYhQG@X)|o5!YueeaXInVixI99l_tc<uSCA;9!;<{n<&Ng'
    'IHT&}SGG2A35lA6~m4m@^**v9s`*ArHILUs+l(b2ru?eFgC(2x1q&kw<D(@_Y|MtdjMd74uf?9;~wZ^N1z<c%oDwfALd9XJFOG-'
    'x{iqOU@s3Fk<mgN{K7OohP+5T6YeBGiOV%E<?-}eeGJ&az3AV?v$>^!sS>uaNJ)k=R4L28cdea0@}9zZRyPTV8Gz85-}=-'
    'FJ4;S1O@~p>^cb1d#ciSU3>KsE7Ln4X|-T<siGiHT;kSVdG&qm_4n1CxVi+^U!c{5U;ax({cVw4{RIpXUU`0v!1~FHJan0bjS3?xm`s-'
    'Qm38;F@u!`g*Dq^)u+`gF@WXfYH<ovE<4!%e9<V$zs-afr6LG|49uhd_Q6JqSoWvK5fa^tkG!Wr{=%*B6bQP5A*DQ3&T@fUF8wR)EPJ-'
    'F;#<#BA1$79Ea5-~)tHhJLBkbIZpYCAuk}VTPMQ-<vRcAHKdGnRAd7U)>ewTwwOqspCzgo~JfOadiYa%pQGVBG()q~sh#-i>|-'
    '|{R3)XyhEFS)(L1|JO&y}}5yOT5^)>vKd;1N<H>K*YtLFI?Q{32;-'
    'E$iP$98#p&RF+^`M++20)BBtCp??~#PRx~+QYF3ehm|4Am8!+g(qv0NS@aVbw$3M);x!Xe$6cRUln$>c6)b5_8?rswc5II0*k!#}sEZHE%+_Q-'
    'OVdUNbH7?w7im}zKm-JuZ_A!k8XY1Jhc}xLJrD4frntWSC$6shnN5=T;N-j4`AT+u|6~}4n*-B1PyG;_LZwAqIu$)bY*THR8()XAmpXw-'
    '5`3EHOr^P5V-'
    '7%kDcVoFXnt4<A=LQXGPLs$Dnid(RpBgT(WQg=G3;oY`?i!*7l^{)Lgf{H92?njfo}ZFD;!~{9<qq$CUak6);y^CDBwLysxhHF2Z0&Om7svh*p'
    'U$n}X?xT>qL=sLHh_b0=SIXGaYAc>!^Iq2UPh##+KzSX;QKE$7Kei4_S=8pdBb}PgaeQ=yuZVB<jg2dkpWx~Mgq&ReD`*?dNCo`nev-'
    'T9BmTZpob)J^ai12v2d`C1gV;VvQ7X{(IZag+`+OMLlS_41}k^EBh+=vCKsS%bUdb1zgxW9s*$7)xX->N+Y^3n%Cn{#jR6GNMHey|%bB_eN-'
    'e*VgCtFG!Y?47fFS1m-JMpF7{Gj9l+lLPzq32-5jKn0$3sk%%;Wt%C)9GTnnkO`6-'
    '2qb6ajfPi>aAjM9vGv^xT`~Zpe?Z&?d?*JlIsZ4~)Wu$c(upz#wl_Vi;+Y=H8fns%43zjhb2dd|}mV*6UibT3Bf{i{2$>ugHb`kC`_#-'
    '9o@t6z?3O|9VdUf8*R;&sCQa3{k~y9gx{)6>LhIrJP8P`r|z`fS+{4crV8P$PlUfB1(%VI!_Tc^5LM>>aH<#J%8x47Fs9P7`u@__CR!QDLnA2g'
    '7Ni*2Yg*HMnre$C5q87OinW*l_ed_dHMQT%n7AsXp!bCEaMQ*Z$d!DgQyVpkD#x5H|S!^ZDc8|h&lQa`JHtWvWTfUT~g!RVdMJuCV5HMqmj;Yq'
    'iMEMnicYfFirR3^#=248cz~qSIiV;^1*G%Q9BCYrU0A;q1y|V{zMC%YQ!@4sA%m|LiiNYPxA(^5Q+@e?*MN-'
    'b}U4>k~e>9AUFQ~8D{bYIqbh!4a=E<%yxq^pBu@3x!mkQ_WM;vP>$5Ho`;6?wq~OtYvt-'
    '3uu&uzuOO7AuBZqb9XOLk5dJv+G1F2g8TX>ZoQEB_b*AH8xS@j>1R(@A426*(#K=Vul9!*{kebFpwx$F1oSS28dzY+29Bu^ixC5IKOq|eK-heP'
    '2e2Pa0NgBRgqRUy5*9^xZJO)FMf=M#IXh%p|(Hx?gHce_NqVr&02PFH^xMv@a?Sq4M7uA!&vEA8CbrFGy|13A7qaxqM%pH-'
    'P{B_JXZv4Y{JXAL^O~maO+LCLYW6s7{P=^>-fBW~}{zpKug|^PnnR$N)bOzi2iZy5d?o9)ZM5esFwJIPaz99d7uF{G1t=0JMd-'
    'A_s#ftdNTQ-7fFBCpdA4ge^mGe+%2)s(Ap0!ONW$WEZ)#aXMRF}g;23kyFAO$QcS;Tgw!bbS47LA-Me0#AE$$aB>v)2VV7YC9X&z%`IwbaJrzT'
    'Ih!MlIe6sbG$82@a^0Q}2^EU4ni(4?^-eEu?!fN{N(iPp1m+;84~W2(&Dsk|kX~Trum1+~2<p1|Ww-cu3h}34CbtpFhwSe@xfb`rl6M&bZm@oE'
    '&%0v*INZ&$)r)MJ`$3$O*561kn{ucF$k6_A1nk91jjp$Guz(>3)-Ke`fvH`mVN1TJsRGM5G-'
    'nBCi@8_5A=?Eev`N!qj?WuC!yyke`33Yev6M{SpT@Mkf)b8gn9VLSEwt`VQRyw9jx=6oG}Xk<9TBc*z}IddtX1&Nf&6D0C1N-'
    '2MCPTE@RVS!aoQ1-'
    '^kOf4%!;odxPge081~?2|KY`khGXu9LE~Bf%Yg*L+#kJ3ePU8z_uf|7!3pKD1p2x4jTumNV{BQ=<yM4hvqMMen%6_uCflw&dk;_Q?sk5cEIY$e'
    'PAd56Gt86%&i_Ro@M<>2w*Q&`MMdhxUnI9D>>OXH<@A_@}e@PxK9f{wOF<^nvA?Kl_WsnQ=8HQbycUl`a?<xd&`l>~U70$4cs9co$J7X~?q_>9'
    'Z30=oEoxIRm7f&dtvyrjE(HSfx4ITLIO@@{P6~^U9ztDVYlGN}N?ro6XPzdINnXrpQTf!-'
    ';wx{`UXDj}FpnT&TK`?D<uk`zp?T73aQ+b6>@|!s6UU(j4LCKYaIJq*3sRI2I`c=>x4`&L?2&k_?h!n#$F`*{<MKz8?1RLNDKw*qDj@u*R&c?^'
    'z=|#R8FdvmRHrWFa!j%7rQ-C0+<TQUbj|`AA4$QOd<saxA?P{x;_QG8{^!zl$CC{QIGEE6vZ+h7-'
    'H+bCNBtiK%KM^2$Sh;JZVAyS?@%*92#h6>T@G(x2EzdD^789ciFX^7N)w1rPxHAoe&Hssm`mkDMZaUS83^9GOeXmP8DcGLgi%mC;D%B^wZtlDS'
    '0asurnI$CeIqQnw_wXqWQnYWeQX>N8`D*JU7;QPx16!C}QPyYxOnRXC4KChEP*3*iFMJdg<u;&j@+dt2BUlEYTB8sC9pS^ok4BTh;RV?2?cUWM'
    '@)4`z3+z6E`pdYRQk_sqv3%j!p-et*EHUyhOV`-SXUDR!@Md=~-'
    'DFoxzSOkF_kTVsHM)xwVPXAHJF;h8Z8LF#h8<N3@tTvgHdP;mpP4!F@Cr0d248q_9tB3&wA-NAt}eru%1T4jv2${35Q`8f__cqw1Nc0P_vby0_'
    '<xdc^#Ba2}1rI<XEzCSm8`QbcCGNPB0RDcBXQmCf{wln<2ilV%%C)n=*v5JE5a%<ZHS^?ZM7R?O+l9cOPtd1D)Jbyv0kp3c0mhdCrJT}SRa<LE'
    '}@~MB`O1zoY!zzaHQ9PO4c@&&9c1;cS%V*(N$$cPTgJA$eU_{JZ06QUGxhAX(F>QT8)Uf%B<Ae+@B1Sn?LYTOGspWV|neRZsp^W$8Xgc<;t{0Y'
    'j2Vi<M`Tq=!T-L?R@jrr2Nup-ZbvVh3A+2M4czK88*b5r5gb_kB*NGN9uE;|FfBdxcF`GXDz?$4lBO+Ty3A`f=2~8u)x^-'
    'crZd}ZGw+O5YP;4g?5+^6?Xx)=xYhU#MVgx|<p6+7`i~KJQ9ZvH+%L?JVQ78r^hC^}tTgQ*8q54%DuKhybzbXy>cLl%~-P(-'
    'szcySvaa5&9E@h%BMdeo<Lr{Rrb|utWSb<h1&5jO(FU#o55@I3&Ce592rSLzx1Y#C2U8k>&7wvb7r?F75+xBJ{Y=~R0M1T|!SVX*Lh%3k=NXv('
    'lTs|i@W$TuJP`>DNz>6lRLt21I&bc>59jg<sN#e$(P`YP7klO5u1<h>k6GkaX2;4+P`=rcMcDr-'
    'j>W&Cuyh;Due>WJuDS>glaFpwaULYh<o~XufzzhZJ0jQ{!szoKu<Aq&Vhs6sArZ9(=`-'
    'u5y&~lsPq6tFO`A;G_r@}FaQ*l~>i9R3ao^zFCB_L0PFlL8@n#aE(Ix(G&SRb5!imtf%15?qEA__D|U}8Q<l9{1xp^h>P^85N&$c}R`=pEDSI4'
    'Xad6v`u-o+LT%2_%RRpaE8hNW%zmm2suwByCT-JKnQLqmDo>0-'
    'mT*v7h`vvT%|)aJ)*9@L9ve1S6(NHCcpGO9sG@GH5~z0?idkNaxJnJ0W$!osvLoV$EzF9JHD+mfak*_Q!TQ38Aj6vmgVimRh0WbEaihmI^Yg*d'
    '`G{iLK4DgZHaSk$1z(lV+vf+Uc@cvP@dw$6XAaN$5`P=(@QlxL8D2LYZt{DKCe1ggx$KHHn33fBU`WyVhttIvyV#%WF^1J8Id@qw(oc8~zK3%L'
    'oNX_r>HdfNP<%776B>?u>ZlJX-vS)Wjp8q|CyZk&1c3ECO4N%vy`Nh(^p!Gs9G3nkEgLrDwXo0x8X#@&XGq6I1_eU>~>l$DLl2R4!8<1`dN{aD'
    ')+0c-#~Vtku{C4acNtWQ~@g(PSv2BMETuVHpH__8|g+$&ue<r8lV&Ny#Z?XEtP!lxb9-'
    'Kl14nyQMI{&5lFzVrzq*l9QBhx(psGQ>QNbzb3sjNiT%?t~qvwB)nO;AlL;7tD#G&>2goUX_~9V1266~j<I183xyXEK`A9r(g&4xbkrZXBs0f~'
    '*y8!SAx9srXoN42E@8~{21yuog*ht4xaQ6D<%v@H@@R9AzpZD4vA-'
    'T4wd@Y^zIF59i4;OoWlg<_=er5Wai;g!$&%JPMfnAek2}>whblJ{eeF_3RPkbJo(x*!ey=^;sQfWP)4S{kUL=*SQ(q%f6AwGBR)76@PeGM9nK#'
    'PJxOXzxV4-`kg;-%Fv&wU7&Vxa#^*8)qZ#de6uWzKoENm#y)^KExPKI^XM?Sb^p&ea2x3DkEh2o%RnvsFG*`y$;MT-'
    'j$UrWp43HX=YIUBZzn^PjF{j*i%MP;UM_PPfr!}cZzVdy*aIYD{v5{;D0$SZds+T8=#4RVRC55-'
    '}y!1SJN{}T3@+^A(husfYGrHKvBi92y_2n8&zR|O|O>W^FR)hV07d?ifM;FBEnUzIPtnScj#<7jw!w|z{r5f!FXd-SdZoHl0W`1rYC-ESR~fOX'
    '%!bp6QvT)=|z0UA<qa6u?{r;X1BY&kj@&h5p=&xhG^gfN@~DSR$q`~C4r|Bdn6vHkOUYzcE@M*V(SaEO%GUsp!ypE}XNjTS*@nowi9D?a{d;4h'
    'AxPcD`C@^ea1S-'
    'Kl6i0}4Mzx5vF#hyRB2I15H#nGE+RZ&}S1R*U{vj^ennOVAYnd^o}t^IcQueM1j*OfmJRtQ3JJ3{CVW=kPPNd%udt}$5mIwzPN|71j}eM+CuW~'
    '2W?la$bp87e?Z>IW5wYExD;3BCCuB6>6kVxR<34c;bivtv+_a1GQvnP^S1Dh7QMC9)=)3YCz2aXU#ses*DmB%Y}0_&yQ~fh1}(E1$+5LX!@eO<'
    'OQTOV%(IQ*lO}q3lYX@)1bY=p15NtmVwzBg_s1cQB86@E%n7N+Y*?R8pG7oH2uK2*EV<O{O_e{Hc5Qfqey0jHuhwbHT9Lo+d_3jKHX*Ysl{wLZ'
    '$pHkby~7E;TtC8pD<>{L^ATdk#_cwfkOw5M*<+yh``nx+T_1HqgES4~25}4_d=f4@6;Za(f?_KEDobadw*Sh7}w(?OSe1vQu<&rWKTltuDQ4ZW'
    'PE}EzKO2n2t9&`9h9^^p1;xiW7$@!)OX*e1Z)C92hPw`qGk_bd9JPqE#m2ZX#XdTZZtD^uq>&qnLLjgC82F%uAZEwzze68D6prSy`6S?$6leZG'
    'P^hl%+g@U*V?rT8y;r+{qH_j9tJHby(~hvyR2ct)<QMV!F~N0yfydPYs*#JL3K&Y^uV8+LmfSr(OW^*kd~Vrs-'
    '}fd}*X^2ElNcCh=su_yd7L)bh1K$*Nwqj94<uVaFa0nW&{3B*Ss!nG#>FVR{B)W2}>8+9OHy3lAu-wFK)(c)`o`VP}cfXaZBMxFF9fRn9yPrrz'
    'c1s2>~Zb)B=5!&xs#YC=NR3{S{2scyqgWr_?U%vXqA$e4Wcmo*qlX)6+RVG^P6cD>0*ACp=Un1%Ap$`qMKc1oo2t)<p#D_L8$ECX7H387j=2ou'
    'iPkrPQrEloZfGAUzpYY}E87PI5!9)((uyvSqnjk#IzZ*}3Dec{c##R?ra$+w2^jg-'
    '<5#(X7w>&>P_Xo7!UGck)So{iUZ<`L|ZuI?kzE92)S_=uSKfRg;U@`qDQ>ujxpr8V<Dy6DL|xpw?3*ZOrh8jRoDgK_=-'
    'U!s5Y9Xbs*h`%)M|MCZ(oLZS>8u+d_jWn9Y2fH9v)_?Vd5ug6rw~;BIbVuzDE$4dw2O$IYb3_aZcJj92uSx_S-Jz`Nw6tLLzmSU6JL>Z}+e3!l'
    '3jaIG5=_`Jwy4Y0OS9K!v?dHw?IIG&PgY(1{FD!1%o15#ddZPs%1bfz4Y){F8EXBzY*9X3T$)hWvaEH`Q+jS<)JDrB-'
    'A~vtO#grdR@nyct#~=egeHW|ub%H95T%Wo?3`CO6H>(y*U^;eA^heWv#qlJMit_+N^Bb?x*{dE^#GY;Pa6qn>y*S+bv2p!=z-'
    'Dr52;wnEO)*AlV9fSV#4_V87g{XP`4Z_;&q}Ti>8;aahoE!YXD)Gpx#0I+m19C!Rc@@rA7*@=ZBuqqhOR2rKx-'
    '`y9~$OXdeb_<@+3FCYVsZE5wb6Gm!PX3WxYK2&dS_4zFVIkl)pXB}A3*Ug_$WYgCnDoPgiOU&eWVz2<o@Hu`r`E^EE-'
    'U(CQ`?ZDn^W7hg{_v9E9B$4?hGnKO>7QV%DoQ)Gpnn}(xS<VZ|N()}HnpxeL1o}3uUa{|7vdu^_kVY?i7Lgp-MDeE7VA5WZ0j>X?Co~ympU0Y2'
    'Sps#<7vXqOt!TEWns4}&w;?fkiXZ!!O8KiK{@{|hcu=)6bSxxGAHGV=UnS<R67yGy`K!eIRbu`sG5^y`%!)MjJC&C+<Dm*k$siy#65^2M@0S{X'
    'f4N2Du_bJ>ZA8BQ<I<nHmkjsG-<V{_|DHe_|3t77|BZoI(1fp=;_I?0zUu&Ia;>xpzw6#g--?*<j{#++)rI!Lx*<6-92y5A%k|hf+WA-'
    'C20&1yh?eXRw=7=;R@n6xYibQ-bnC`hVP;2{=_yldx&#e^Rq&(XCK0by`^D)M!Y0DONVe^(a`0s-'
    '2e?9H>0RupyF&z(;j6^|RpS3D@qd;0ze@ZMAn_ly_xD@fan~N53|c7jCs(Gxt)1CqIit1O5ROPc>=&dY$g<btDhGlHQbs+Hc7mJJ6S*^v8y>nK'
    '&P|<g)t>4cr5{b8M-'
    '*oW@+m2ut|R^>URhd_PsOO4{JPT8b*4<BbBRlfCuM_*5~%i8g1AzM&rk<dHg5qwL;bU<&v_@fJ(?dcBX80qg1T50a8rLR{ei6(Ik0(NTaq%mju'
    '@*;Vqj>j&t{O#cF}J*afUSIH%N&WlCyD%j0UL0CtOXl7<P86W?o0!8C&n82MxO^<9tsYuv<Le!Djy5Y0qvJRra4TsAr968;$Ig=LTKeeYFg)#I'
    '5fKaMmJ1u%qB_ZWxpm%pMHmx??q6PTbb}&wZ?5dN&SdRMUqfA&$v-m!aqS)9BjEjQBVhv|HW%;ZeIUbag*r&`C0S0DW7ZXwL+Q>O-'
    'D)4vO#I9<09*=-n#1788fTr{;=?%(n_qaB(8S-'
    'qP8sUpdkjz>&laM}d?!sw5k3GA$ti2%G&>+3c*?2q1!|oCs2m=;ia2;FPl!k5xZ#<20|C4)2@J({%jBfg{aTDAu9uy!I4C<;bwQ`!DA<;5oX1n'
    'WUMBJ|10U)M^eS@k>V9BPH2L=_I=85OpEiJ0pw+W?eJSNZ#1AeYIdFki5}o`)c7-9eLyN9@WD6H1bExUU53<MgEA=s_(@B{+B6z$iM(4;-'
    'n>!rl7WNhfD=m9~@Ml3}?;cHR6EjtTk(9nGpxoq?cJc9gH|`Di6%sd0XUBm4q#8Cs>h3RWhq&6&=zBo3k3aLIDRMb1XC_MVt~N8kXN89f>84G5'
    'aC6m$NacEOgrL?)OefwEIwy@NiHjyQ#TIF)$fV59uPLBNg(nLgy^&9H~7hhC0JYb?Y0;6Ho+8xCH5oEC2>NAb-YewF}C!Ke=5ht9){+HS3^9ax'
    'V{#?G6bv{6VA)dpZ>?5pr&Dj;0!$jYUJsqyJb#1U$Fu-&e6HB;1UxpJDsowfp1!fqg2u9K_{J5eIN};Mz3Bt>R7NHs|{|Stm7UoXqELh-'
    'EsPLFl_-HwbT>nE-A)KqA-YUC=tyjxHsE=2ac&4Zpx%q~572qKr>l;j+;R*6ods+TFu(^Qbp$b#*2mHtJjD*(pB+S^J{Ijbk7z_k6Y{U$*cRk3'
    ';675fz@<nR%wOIq^;TP(N3nxZDLjb?y|g%d$(GAkwMH{Ww8EuA-cq3sY;(He|*mj=-'
    'k$m;L@22|6REv64EP7~jGbODWUyNh%M;@@7zhO6YFol6sU*?6FpI4^yIi9a*G~-8wY*lGC7OH^|uqnrJS=C<yyO#EshKy-'
    '^_7pRg3*xoFbmD=uZu-3T>>2uIDotYM%k)-'
    '>Koa$y1M`Fs&l>y`ZGR>a5!U0?hpnYS>pu5VqC_llYoxeLpg&%*%AfiGO^lLP<1n7I+Fv_lH^c)UGJM72{er~BG@p}s7qpbdldH}MN9bn84)UM'
    'a&=ly8}4BJ@XC$!_8Ol#Nv7pRON&gYNms>Ma+MH+9h$kDsu>pRKHZpIBHUQgV!(DLAXRrfA1>hjD@062w8Fd?LP+<7ZY%{+Y_Tccp<c?Ag+3Eo'
    'dhexJoSn<LlvF=kS&~2pgx<(Q8^t5-FxxB^$e|F)u1nM0Jf4R6eQ7%g>NZWgEv|Cxf5NA2jjYUavPKX-'
    '*$M^Bgz8qHaxjKKVXP<<DdmF{MUEoS03jiedeQYaXNHqhmH8ZTd#!fG|IO<pSb;=LfeDk)n**NC_cI7LYaV6Pb43#2A6=qH}7jy=tPlRLW1fvc'
    '2F=w>bDYUf%_2@-R!J)00*5X|}#lQ6y&M-f^9fh{T-'
    'M6WtULkd(MA^0t8;O8EQ;9HgW@!~nbPPYLf3Ie>OKrnM&vSkoT|gc01G5A}0v8n_Yj%%?y&KFKAEe{Z8dCVcw{#D@FtEihDhvRJ|`v?6}6a96b'
    'VE%c@WxKeBm&+0m_@x`Co6ER53a>QC48ts*uB$badj%~q>FpD1-'
    '^&WUq{9V)(iL1LqrPlz^r$(+rIWjAFNSdin15LZz?TyBrmOY?H{*7t^G16?D_$?`w02C89uj*3^($aOELCfAh8^7!JPKO&$YtKU0nXU*UteO%U'
    'CNW#yCqfkDK~O*qHK=ySNA_?`c_3P?RWp?Nlo5cb(Iv<1WID{rin^{ljYh%1og?c~u$k$>7k41B1O^+C3a{C?u#RI)taF(4jUu`RH*_Ow(iPOT'
    'r@t(tMe@u~w=!`l8MoeJbwo<p$bZzd#Y~K7-^_z>fpve?6qR{`^8EuGWHcnL>CGx^=&J|1)pE#hKM-IzaQsV9V{_a;GrMfl2^1-'
    'pjbAxF83J9rZ*|5e{bC1;0NI7v5X@evb8XK!Wu}g%^)WbcfVS`Og*|&_RVsh&osGM#(~3RbI~k37-D;KiI`N<P;-'
    '9NIRld~A?X8$3Pu4xjLPjBFSU@&>IcvUt<O0&DqK(9NKe?e5OeV`PO6Q0axW>SZma~Oc56*SURg|;T_NfeYs}xxz`YTuOQX$NG8_4UXxd+yWAk'
    'zna=9pu+_BaX-g7C^sTVyg2fr{*Kd2{20D_T&F50c!)y61LNG+KsT3CQviB;Lh!7%Z=@wc&unMKI?F1?LB(-'
    'OLwhs>^z&&tKIx>9A<=zG7G|<_E9VcFbO^Sm}|pBo+&TT`HhRT`QuLqIFgk8&L0t7x?ln7MYAY0cFlyaYJh<{UN(trFo=O1<UBb1MHLh(70Jb%'
    '4TC&m@Y6T*22jhhY6;WacRlKMPNAu&?!BY7|iJTlOPQ7nRbQ^)w(RClrO4m#@e)0*&~I@sOmKyz$FGc!E}Xp*Fy)k$hAnd!`5`wcykJr%7tEQa'
    '->W_Dp6{ArtZfrf!;jo^#FR<{s#nJe@o_)`bNb`nUIV&=2$7B{7f=dRWohE$WMZWsBfisa>_fm2s6Jo*m^Q1-'
    'm1DKSUz&?j(S8^AIv0?ukF?w{UEqZP?WD^2(R<82%{%UUCTna*Se~$f5Dd7%|z#ft?2jn0)H9NoiOg5@?K+p;iH!bA0#n-'
    '6c{^YF~~jwhI6B30{yW)d`Bphl*?=nj!CUbV?~xt&Ps7AX9lAp#GVodO6l*W_2WYa^YB!V*|6RS1?alLg6+$r>-'
    '<@uQxR5yoM;*Vy`YDvO|m=*)wT~8Bbu!p=P)RZro4WQmi+fcgZ7|9{g<b`YQZe1!kYVT?}FX35?nSsb3MkhP94h>8(H^ReSI_2#z*S&TAwr?D%'
    '<f2c^tdN<B{fLKYtXmwq#M*=4`W=6;*-'
    'jqzk&}K1UZEWg3EQd`2aqL3qrm#|()@NPCbd4nfVp2SQ)8eGvTifv9hs8Qs&aytxs~PgHsMzl(1!6YBl-'
    'L7DKpW?^DE5C`6aV6fjBcUlLdvE6AOf>Qcw&6kZs#{<R$?H@8hM^<Q|Cd8bZHXby_T=ntg20HHRn>O7EPjF5c0**+#*u65*Y@QSUPv$XPCM`r9'
    '1*GhJ5)yDEf2i=O;x}rvcX-^;m7%s0`&Bim013<(6KK%_Y7Pr6Z^}P%@gt6!gX1W4P>1-'
    '5m=MTBAhjlcextS&w7{no*nfKfLa*K3KZF1F(OxC5>ZjCHsRx<8CBPT*yiB7YE^0=Qz;{o*T2osU*AH%k1m1-'
    '|QLs$6EZtLz8hbvUdG0j1yrh=5XvE2IW@6Swn#=UhX>7{^^RKB}w2&hyryWDmfppNeCKp{S6)1~NzZc!h7)U2bcq)xiQuJ6O-'
    '$KsvbpT|O)w7rteCVDWlX9uU^J;!oQw4C<amyfk6iEJp=X&9wsXxig%R{1NUuIT_8^%M)zx64I;Sl8<lA$EBJ~^``jZS!JMS&G8u0fo;aUGu~K'
    't<OWG<p-'
    '?>e%xMW1((CKshymCxV~Kv4qeg(Pp1`2*tG*RUU~}eF7$Wc#{jnKrAXw;26S^XG;vS9EsoPzP8@?=zYrr6$wkAR$n}!u=5GxYF6{8)x@CHo<u@'
    '&K2`~Ur}C~;&E*rf2<3iH0TKUEb2n0JnH5ln5@+uEPGo^>+x_kT=n?0}z-'
    's%Ko{!rqBRqqrKF#5&dX82;{@~ucw1d!fS=mq`Sw?D7&?|gpB0_46a@qVRTJGhpd+wFz$GwIV*Jl#HwCOcV+>E@Kk9`-'
    'Um0*SJW=+R{lK%f+fP=rjD5Zgm%ABImwYuirPs9;nwx9AYXBo6q<8_M0pUkH;>m=JItQbOwHIbY(R~p84C1X6<$}wN_i2u4lXwiLo3B~nm^(FW'
    'x`TEI<UuKR&d;AaG<xS<l?jE49s&RN)=a$lQzQSr`vaTYE;wIT@T5yL01x`mn=aZ5!D9w5CxZ;9gc(Pu#LeT~*E~q%83qq#y{JjPzg@AbVsA!L'
    'Mb=#jRTkxuyDQ$n|AfDJP1xPxX6XCgkRbRWpxFPVW<Q@0fscchIO{vWlO*RjGNvp=T{OgM4NvY{9I<a?BiMsJ5Q;Ei+RkTbz%XCsV4{_ArtpBl'
    'dx9Jc^{XHkl9fI|zo4^rBx>mI9chKi+j+&Y*G^8rp(+#T^Fay3c__pZTg5D&2>Uaz8V@zooC9z_L;!WLq^K)6KOGpXnWtn3m%b>3Bp~qW^WpB9'
    'ZMtaq<ZvV|&t4>_xB3d<tA98LYAn!#y;0f&s3nF}ai^!UX?k6u;MuPub!Dp?mO9C;YY=@#;5?m@)UyQSSUe)?{3Q5v=hY$4zM&dU^7fz5k7mEz'
    '#XFPOn*;o1jK@rDDOqX!l;}74Tv&=@#UZ*#}VAN4d`eol9yc-'
    '`5>@(?CxRj1Y<mdRkV!mQ^66m>=r*8K8XQ%D%`0(K84FmOZ$aXzkYmnDaR`B~nnU<9G7>i$91#7yVX>P&_sjg-w;W+AbS2_HDek)4K%2yr-tI4'
    'CenRBkB+{pq>j4#aY5ctyTA;EKj2{jUPR*a*PfP?!!#O<<dV9ebC*=ILkw$(*ISD`ikr`}9NPi3uXKe<Z7RcydYGxdy@0Q!cm2Kv28b!D6YmG;'
    'zg^m-'
    'F!MLn+P1W{=Ise9=xXN#;Arak*=3GEeI<$cPkU?3Sy|NC+e^LpMA5=V^PC!3w_U!OeesSdfj$hyZ_)sgrCr2}WwaLPZG<xgaZ)2OQtm2(QqpFq'
    '<jc_(j^Q>PY4(jK?$qsI0wb1nCheNf%)JRcWrK*|Xgu}bt?F&gD6_H?k`>bxG}QZ<;^i<>YS6&}hX`o6Q?X}Lj9Jlpk+FZ8&W^RW03kBWu|Mg3'
    '#q<2?mFDe?IC>yt-%^viq*`#nV{nIG*69M3Gz;q@K@xBUocd;m1Qh&@KVqYY~wJ*=yC<_-'
    '676|!=CH)$L$xv197MPT&ce30mbbUqhx4Y?6TX}3}1HffV)q|+-s(oTtCR$pqih|F9&+e#&2^m)?e`-'
    '+PP^6g@^rZXexKtw&_Z>OyObXI$N^iFKt$ZWjdIuIMb&TLHb&5O;y%W1BR{wk+=tF=#MHC<Ki?7G~V%G~=aI04Qb6=_nnxrO@MN(FA#PjRs|Rp'
    'QPrj?Koh2oV1YlKccDWlXMlv9ju4Nbze4Pj6{p>;75Sjy+Ppmcjm~D1%+9wDdn+8QsQ%meCao5KHGt>{Ft?u5|pczOFdt7gR7;&nh3caIVb0%G'
    'A!4ncSn5z!i~JxD>9q%5?49_*R2$nf82=aanU;9y!b*LwjF#oM?ePag6xBRCj#nzzsIFqwD<b*1SiF@JV-sws8V(ep?B6BeB5OWC6zDC$Z7i^C'
    'eu1;T-u@y545nKeAF2@ilaUV4j(p@H(?nVk~+V3YySfN9OQ}Ew99QYn5@1N$=hUo-'
    '#U(t8R1|$)oHf@FLY$gJeEWa@__~?{an2PZC*bI@K~s!FmDYQd9ONRcV_|Ol+4&{a7X9)4r_1Al2Q1Y$6eya=8R;strmPX=vNg`?+gS12TWjE%'
    '<EYl$o81aly1r|C?_#*|!s0*s%S#R#qv?ynWG@xla4FmeeP<;)q{Xceu~4sabAO=_s&mgmP@E-'
    'lQl&jyfvjjH<tAi#)oTnaTrNC5zjx5^(lbf`0XgVZpj9Q4k^%z7hWvpTzhVkx!&Vyu>cQ01a;43IS`p4CDzIMfP`H>7zL7`LatZ3y)H)mVxd?>'
    'S<ir;9cvC$VtQM1~DhbXR>?In0IhOGsN*;_4vz4SN_(BzYJT=UUz>Se|}}M4QjL<={-'
    '=R@1O{U9$;dB(L#uC?um&|oceMZ;d>*#7b)|9pY*@<!U+0fOQq2d+D1%i<BfhiSEggxKBSTUlr)OmN#IYFq3D_gq%3_H%pH=p#~d))N<hs`@`9'
    'm&UKbJ6x?6+}8p%mg9DIJ}tzHSh$GJ3BT-9F-(9`7oq)L<0>brBjYYt;rbj8hU$Ct9(?aE2Ph{HDUwu2zNp>5j}%tsbE-h^A~X(Q`-'
    'ME;LY(lA^*q7#sMaG<_Ll$=EGA6BxIT7=nHY~M)?HTyF#Kl&%a+xSWOzy>@|SfJR4)`qL9ReuGRB-PM}dw%ecX+)HXCzyqE4@U_THjY|@<962`'
    '^#;Z|8|l&fE0FIncRd0YV?tA0BRSCWQ>JEI>BYC6H}HDHHu8p5*i2?!5JFH19VMj>#7DVT4VK;x|0I^U)u#M=^wJO{l418Di$VM+E_XoRZQYr>'
    'a5D=3FbYxVB3(cS_YVI0;wSiP;#uU?tY4I31)8e7zsf$x1uE^NC3&0;M73zaQk_v#QK14nsYv3uCaW}_u1HT>kJ4q3jF(%JYAk0bv(&XD==lYf'
    '=IvU)sOZ7KHTYRXkp$Sace#+^`UU>Qippi(R|UO@Ifm^AZiMkjAW_=>in_OF#DJBhqP6QVZIdce6k#qeU8YDCK$s^b7&IEZ)K$l~6e~zXvRz(F'
    '`Z=;y8k3PE2Z}9p@PUiPLPK?2SsqM;0`2_VV~O8e39{1WLAk#wEoK-'
    'NIj~gZU(ZdixDmwk{=$WEe1Lh?sFLm4Eg0yep#fu8_4!HHWTeoBgbH)FSl^HaH;}aEGAp5@mZ&cMS=3j(D0`nS%S=oyi3Fa-`ZD-'
    'gV#O>{H%}Ioyz}(449`6E)|8nh^>msD_vqNJT2+6Qp7zl_Kj=3rNo=W+Bv^9|$kf}&`@0)lRtTEJ-AUCTfQt|BE0e1rk!9NcCuinO`DPeyA|~<'
    '5S`yh0a^aM{V~S=M7cX_j{1*X*JH=uoMU91Ok$dMk5v{S_G?|edXx5^`zE$|zlz=XT_7}Q5KFo(-'
    'Fj|;iXgmc5O<COP?(hC$mbu~(7IBb*a+0uYgU!5v2oifq@X_R10fTT^FI^R<Br=f$-jJ|J)Ff1V*T7=~a1aXxCtdr!-'
    'R{_XomNp4lK#Ip^u3bM*Sfl5N3Jl|UTuiASDy=OdZY;oRia4>3=89?MT^g^Gmr0$3~rTRo*2DI;)?SR7@SJk&lJFbp?}5yaHbT@rg2H}n&s2@D'
    'e|{n-i#_`Q$;#sALGIBA8{}$83-'
    'T6v1x!L`*_d)z_Q2ixe~)mk;&>=lf6t&R+NwHrY_6Pg{~@vqlVUC8kx{cnoiP;85Psr{pI|Fh=%j3+ATGX;=FZZ(rcbclZfa%mlu>fXur>gq{k'
    'jpf_yNKe!erGr)Rhqf4EOJ6aRF-hDo)I15Bn?BWIZ9W>;^*2BJSiA5yLq*@KFSIg}i>0;mn++>J7mtNN2}_LLf_IPGdRk1QYFHT1w=m9pw=l^J'
    '`LTA7*^D3&-'
    '`{VQr;?qhCG3QZbWf(e?6rVU9pZK!3~|K^5)ApkZ9*s^*55{#_38nv{&qOXv}Wv*?#X|>DDF<HoJtJW=5>w|{wr(#dh5!sndmNS~Xh=e~><Rp5'
    '{;AZYj5)+6NJ{NaZwULY}4rxc+MAJPUk3iS$_XeYCArI#@(WN<rf@UvOPE%y73EJNR=LT2>K09gsKWL*QD5U<<_?-'
    'lS)Qz7>*awAB*JhH~4l*CdcGYwfhx6sYy{ZgahvVMC!LT&~hBLI=%^K*o67YZivsG_Yt$#?r*U9fcRy9W9lAO(u*clmlE|!IsW>l+<bof@=7?C'
    'bCTo3cbu-'
    '`DDzmbjqds8OfZ@$T*_3w?uP69l;uqtOJ)LE<a?M`bnY7NIW#@@ap|JJ{+S%bqpnq<cA^pEW9aE&w%xG(DTZ>;%d&{7JMB?;lp6i=+5tem^6Xl'
    ')XC+!rr$oVUaV_d?*nW#~rNN#(yXJU1iwq0qkLj?=w2?t5t%UT@6U@g`}8t1*SXqC_IU+yuDqWHM|=FwcSKd(pK!6=O|O39SpJZC%HaZ4^3w1e'
    '(>2JN*LkC6+nV->(_T^Xqo59MGQr2%Y=m1N*q$IUBz_I~lZ&Q$G({!=v`VKGx}dIvFDEOoP_tQ@cNI{X7~_J#)w=qi3e78=CAx+V(+-'
    '=iO=<y8h`kTsqk1m@AaEWU)kx{G;nn0Y><fb~(~I|JHgp=snCT_d0g--MXvXgER24>?)JRXg;!yeo|naq63v&O;<{@u5luXJ@btN)^cuyBFToc'
    'DL*kHX=wlLhX3FgWQT676Q9m&#l%qAcOwVRtuqbCzQ5S)9~=U>*A1o~f>8r&8dw*zU=mmk=Cif_*MIx()-'
    ';~cnmeImxt}~>{qXY~DB!pM*PnP!gyR6b3+KX}Igu5jUx7D;KVc&9Przh<`=4;r_`xR!bFWw~GGScU&Q=ii&&hEFBKxQ2IR)0aEv}<q=|OLB2z'
    'r9B)-*TzRm-1@?|yX6W{(Js-%EU3>pWV>`=qu@9-E8{fD*69lB_Y!9`Cm$qx|qD=PjJ1yt1BG4|Dt-'
    's)b{5=`xMZEo88?*D5oFVpHomwj<Us3FO3@8HstI*2qxDqZ+s5Fq`G|$c?O`|1N(!t3J_WsUrgI8<r<w;?9s-'
    'yP&r@2%3vI^K#R@B}e^DO4LMLa@$@?!jxyVeao4_@Y5BUdWv&f?Z|3g2a)UJaj-'
    '_$u0@@=IpS3K3~z2!3r;=%>jS+WDN5@sSW;kMt7fyUL}^hqkYYS`J;4)@Zl)%4NV9=0d068nW3*0Wv09kSuOG#VnQH;Zwk8-'
    'z8sR2k{%3r$m^i+5!QJ+!1*)25S(NjDKi`@093TdXHT`mJb{O~KGBKJ8D9@fLEMx<y4Pnz+{@_J#!1Srry0&Y&2*Dq*>v_QrEao#Kcr)Eyil2C'
    '!OQyTItBq^RW_jyp4WmYyWN%2;NIJ1b8O&8%WG*m?NYP_TpWYV#F}#t+w>H0L^}ThhCQk;@-'
    '7}ltGVM!#ec;x35!^X6qvQdSVaYpXi~Mo0^keRbEbu_&kT?$tfUy`7vrNu0Nqwdp2QGg28u%_rjS0WI{vymTt5c4JZNNhQ=^2PxYCX<yD3n*<f'
    '>>b+gLmcL=&QM#oza^{3b0h|&vawnl5g$lhnMGu)2#|Q!^M=#IV_{(@NnEb>h*}I%HxgNL@#_uZlT0B6<``qjiM=K8cw(pSVSzBA^|=!zX%0>p'
    '_isOYhYh*gYaYYNMh8}M-'
    'ij)qUqA?B)gM2RxXdnJ(dh2MIvVMG&Ll)Bu^BrxMd}UZHq2I>_gZmem8%4(#btfSltaQmiGg>_>&U6eeKYMBC27AI>=X^WKoEnDB0fyw@UVl!d'
    '2s*2^)=nNsgZ8CoxfjNcH?Tm4^B6ig?X`7DzT8H5PZ{F@;n3WaBt#Zd2lRCnB!km)IwQ`@M<3zC5>HC=Ki9LU@td_|Gvj{k5<w&i4xYRmYU#a8'
    'jvU(yh6N2=kH1cE?C9Aoj;l79Bfe7}x$*vv%G_@^n$;B;F?Nal(GsU*6oTcC#yBaE=la#P(C7Y2v3!`-Y~5R~#}o^Spd~*E+yF^xk(?9q-'
    '0li~<4wijQ564_;|!h5DQI`!?Pbb<Equ$)x0NZ0@>;`Auwp%CgL(9y8&@MZBw&8<o~E<N4;2wxkTE3mS#@cXz5fm>8Yn+r#njsNFqdL1!5)`>n'
    'yS*R?zCQPQ|nLb|W6irKD;YdgnfQv6q+rvE%XO^@N!WG>Y{=#6^E<0kNmPVW#E=)j+?h(10D7Qu}*p&{$Dypr22cYrpFf)E;H4+i$xxY;}Djw%'
    'tEAvw0>;kT+}p2&*#(hdL$RCQPXHr|$3J02aKboW~W;HAChI{@ym)gAwd_-zXKdU^Nb%a<<^U$pa{O~m{6t)iOn13Yo3;mfXtqSw^4BJM*?uT<'
    'Cm!r#%;$s#net|`g!h83dNi5u!3*7X^I&DEu#tFV#jVn_$Q0UU=TyL(7e<6@3nUCO-'
    '7EDtikUuK?%7ztmqJbbBH9#r3z;wMgfOhpq{bvJW@aWn9v<qamugipEC;UUPMvRX1De;Pn?yEWn1&w{J`l$)EpTddQ$exA;wJ%kH-'
    'f@wW%^501EE77Liw40-'
    'LuRB!45Xtrz56ZxzgnioX?)OghJ+j|hPLJBnqp{uZciMKh+0rLg73@KG2M4*iSLvHp3@Jq!dDoIIljG%V;Z3dsZ}M=)lP}-'
    '~86Tf?Mu6mAyP0{Ld>)$pVlJ|*^vho_xZl+US1gluf%HbrWf%ov^J2{S{@!wSk!BF$k&0i$80K}li>kWp@@rGikW5uDRN#7_T)!Z2^<3bNTJ~t'
    '0z@0h~mOm{BUn3X3Q+s%{P52H%Z>nSdTJT=wf_E_J4Y!KF1E=WTzRm~E?rsyb<KWf}3j+6DE^x;nMwA3j5!C*+x^lv)+gx6_|Lk(w-'
    '_8#0!G3GpJlSiN5Yt#Uq1OY-TYAzVyNLT)j-'
    '75mtfZZN;my3osvMgvPJ~PXI0|M{p_#tU<c}7!%<$*g&n+q*^*Z~B$$1TtOtxirgZ<^?Bl3LJs9m#~gR}AbUgzYvH69F=zgD;MI+yhzWPYU7y-'
    'bQPd0+Cgk@l@9@9ptqJ{4AU<jzPn2Zkqoy(GEf(!IGnnnZK)uUt5df8b&`N#@Q9BT%UjeKbf)cl5^*j|m>|Wdujt72{N(I|)vSYYj<*5vMIt-'
    'w>M`lDLy&(K<K)&dDmm$GwH_$S9wYwlBx~?LljN)E-r>fBeG|n$*wn2eH#D-'
    's#o&@C3Lqq3LQS2tSi^y89%RR6PyH&~6S|`(qH2GDl3BnMV}><tY*~#~j#gkZVa({-'
    '_^s7xS%3k31aNqZ5*RAmKhjHwAaF(4T&?eyD0IJqeS&<)e36t-dx-'
    'u?Tqc1on<J)#R?%4cqUvhiU|_X<XX2;J|w)gM!0i%YuU*3|g(fwTcZ(+fpfZ555*fh&`}7XT$ceAWnGmg2TsAgvExBn;S|I$i##XO;3|qi%rq)'
    '9su3iqtqmYdIPmH!cQlmP2hWtr=)_NUylc^_wDyB>mL^VD=29lEcups9$6#v0e{Vp;p=hhJ*iEdH5`10W<^Ik%H|bE{mikx<70h?W6|2yne42e'
    '2c0@1mcPy(5n7ZQ5i4Y8j|eSFjF<;u9(>Y%^nl)^G{~9(<5q>n?DzBT1Ja_<YN6$^{d3-'
    '6&?E=4if}smefhM&0EmG66Vn%9&X)^R*Sv5wS}uZ+szg`_!!Kl47AlL=$|5mCcxudylw5yh4AZnd39x#m)-'
    '^HKz|L?6(bPssDf!>2^{KO~m8e6Cem)2~by^Yv)420s)A5s6atd>5D2;mtdCqRy-EMCL;)^|?Mv^x=FBP?131}L`+$bam;T|sl%pz`H%`Q_;Ah'
    '0`wmc4&Ae%I}t4z~h=O=Fec`N3_J0|7|n4yd~65EM<Nm=sbos>YaoGSqr8=~{%v<A9Y=misTD$_&=ni}7?21~()|fF$(7@0=I3eQ%MZ`eLtRt?'
    'tQqbk+wstldJ@oc`Rg&w3|tkF>joofiL*8iaW8(lI7lAa-s3U5IQVAB~}3H3IQ~pn4P>c%TuUdW-Ac+$ClmYU}v+TMOs`V<jA)hV)&mtcaR_;7'
    '6nt>k`&V;(9KeE9(ZjVlO+gg84j%fF)XsK-0_fNuN2Qg7m6cx7QvVYA>>`3Aj`26<c+%Q-bJtDWd>CkOy87%g2uA$8Q;e(_)2H0@-'
    'sGi<#SBfi~|=JHf<3YgUDpSv?!r$L;-br`IIn9xW$e{Y668o^yprvffC)vhmo*-EHpoAxMKnDb#E?`8MjY2iCk@=h&#Gs##somvT!N-'
    'lV(uIOcmHpnEn7vhTpeR>~aV)=XS+1Q-'
    '*`Nh?KfWiLBj0hBDTC6;tA3m;_Y2>YbwOX;VK4dK`0Wwh9Hso{7^0`oXeGEAl)im`SyIAX*V+HS}t$Op^EpbB*ADK4wVDVYoVMabHK!c`t9(nc'
    'x5P*9tu#}slEzm8M~*)UchDizQ0DH_5kxbz0}*+PXlfb?Ty!9C;%$s{%d5_8bUt!5=9NRJ)#6!KEfx`)mumzxWV6Pri&fw3xaJCbFki=~(b61v'
    'NK@1=G-'
    'gNCUERJMF_St_15D*~s`02<Cm?f?3S#|<l<XIgbNbp{PqUeWYjfXdaEm#pI>UCV%*8)(CpU6vFytbvtPgfZ8?Pmb+2uYk56w47+wyml7DN$9$M'
    'B}Pii9-iS7%7|Xu*r%4z+z^h)-'
    'Yl4Wtdrnm1m^?(=X~cj2&YlfQW6#rre4T|1;iHO5bLf%&zfdt`Zh4$Zx8z*DbTBJSGO01W{~z})2K1VO^nYP;+@T7Q)whSNO`vuD6)%Bbe{A4l'
    '};*M|EoZ-9|`5*0-4HE<Yg&_Njej;qm-WEr0>wW)D{t+kTvw`h5cql;b91pAfGlWhDzL3C7Sm%3>I#JCe1w~3!B2QC}86wOU-'
    ')MYW2sWyeXY4hdk?2$v_k_X<<jg8iZ?sW1UbKxfyC!-dc2wHFHS4#8Bvt(@BO;Q<9-_-'
    '%(M=ovL@9PR>Y^gBrJzG7)cdtLk9T+_4XN2^u6pgIu@Pr55*LxFQqeWX9GwDd+(e(w^uSnBO~B2;=4{gn8T#g9&Uf>DdiVLucN^vQ9mpDrS|cC'
    'fF5E`x!ndvypJ@sEq8ECnn+M*wbkiTT}RL+NM*G+mTe{%gaj_FCxq;hjudL*&^v@FyM_s#<p`3(j`n(t;I|9lr*BYr-2lb&k7e@*-'
    '#WOz%xAqm(-*ce2AS=BbbQYWpCUcw1&gh{+lAct#A-8VVhWD8!<AQ=GUlM)4*To&*}D-'
    'q=rdJ6(Nh58d4l9+h><mYX(}}b1#F?r8iB<EFYUMpBf-3pNZ)CW;ujH*Sf`=&w&-'
    'qor#MkM)qREbB|%qi{*kfc4oKEDzc*MU^$yw7a*r#Rw8W6x_Oc1UHP!oDOx6B$E{`LMjX)?N${hQ;i--*th|LRQzeN#Rf}Hgg-'
    'T$|GUwL4P(kB<Q)wHUq-'
    '85<EF{DKFM_*=FiVp~p?0*_`<ZG<o0=;bu(48ufA4tFg1C9_yYnFO7FCmVvWQ)B1J#H1#aW<ZqSzL6t7mHKGp+u}0U&$ZCn;hs1CoI%vM=yC?;'
    '9acEc`{^enQOW{UAC|jHLy%G>w$}Ye9E^d}0xdlz7?WUx`vHa*#}08Qr(|{Rt5wy1JqKM6O-'
    'sLpEe&P!g5yhH%b>lb`|Y(HI<cX@=8B3IE8MU6KX|K}a7dkYtxWrkv#@OV-bcnko5HH?C-'
    '&eU#bT(2?Cac&v9Ov^V%W5fJ&bX?%QO`L4+@?=i_a;E!gri%}vlHUkDkj&=hl#a)1i$eNKBxarK<`ej`A&d{VPu@&mF7?)3L`HOHhBu+#XX5bU'
    'qKQyJgN7}V!-j&Dvku^p+ov6*Ydm}lvM@|&a&K?8yT-WEYSBQ=A8z#6XYLzfpT}-ise%8tA=mlqnI-}UPP-'
    '9v!XJ+}rwhj*y*#7Ykv)PEa7FMmF6u?Lo=%zETNTXC#HacU^dOL7(4?%pJBVvy2{`hdvJLy;OPkZ)g)FIw)-'
    'BG(W;D1k^0QdIJWFrAdQed8^yS(AEbWe`gpQAL7R++Re<Vn&^L1%(VD(~$<0@{JyY@_ROS|#OQXoTUoHyF3jccC?SW2)S)fZeZZaxkU>)%1|d5'
    'S(<8FAaLV<2UArH}2hlLOP`!3(mE_@Z3;H$yL(#UbaoLO0YZy{*D*%8TK6Ccc<E=DnWIcNIi+;G%;;vLisQcTp|c9yVz2;^*h=)WHE#An^&`bi'
    'T`rxOvriGmt>`H@o%M?^l{f4&*x(^jPV~BWc>O;=j;F(DS1cMa#n#)kd`0B!CzQ)eVR2=LRf_2EigMBl0~y6sfT>f<Ht^{hv|QE!v$#MqhQ~~5'
    ';QYvOy~+$g?dd~cg-4(2Iy@19!A|q&*y{D*zU9syRva51qP|gJRIAD*0|eh?YH)&6UjFP@RfNeldB-<@m6;(kQ-'
    '{7sE0RoL(mu?CY;_W`^|q)_FK&~BX)$n6w=BhTWKy}L1^#;r3&wy5JTp9)W1ID45PXb#LK{<)*fD>w6L{!o~)cw?eTKVfc#=yPu1W8CD0I|pr+'
    'j&jrUsPp?%y+7n2}(5N`#ZUbY-i33dvA1t$!FAt6Pi(@-_UFe;ZQOcgxxWSgZdVIf;%WSW)d$RyWkNs=;lZ3m<vOvEb{hRg`GmU+F-'
    '#%vI9HHKwiywMf$mdU#d#E2K#=P3>9(*<u)Yu5oN=qH0#h6W`hav)<C49I3Vm5Cw%oK%qDGgZF~J6!o!>1;^!?-iB5_RfGspH}Sg-'
    'pOdx>sCp4PyF*<{ByN9=w*_TA4@67bKf|0$=vT#N=u4!OHaQKB@ePwKpP~cijpE-@+mb&5gCt-VscQ{;7XNh9ursfFB~~K9qdtQ$^My#o2`o{W'
    'r!kZQr!^<j$RYNiZ8D7zBB$#uiV6K;+dgkTH8st>h)XQ^hP8BkQnvLggoj>L8VqzC*Xo0(M<CM%;b5!BKCW#7c)V+Fttianki9}+T<wY6!S`~h'
    'XlBQ>v)d+-f>HtH1IoY-'
    '!RO`?Z_CJ3g{XH!HwCtE&|!Sc4jk|Bzj5N*AIel6gp`0+zXtL$SaA*h1M5YZ+A~RJ&t8g@CDYbiG%@Qbjw3L6_9d)qmxl@pn-qXvYST*UkFle?'
    'EKOnPC{?Kz?=ElnIA7BZ(>;IsTYFa7e&DQy(<hzDZbp}cDH>90&t-f$89tA3lB{b^J8_kyXdqTv*WCS<$}I3<M|^&*y75m2M0-'
    'rz)aC*+oH63a{3c>^=UiW50)1*Hy#CKDsAPvI;kYGA3C?>Z4M<i;K(xqD0!E&req-Ng7WHH^0-Ih2*_yGwS&cmW-'
    'C&0Xig0qJDIT3osul0()az|$zG?G&<(~%2=Docjh-k~G_Qw<K;h@q6X3Ab-6wlK>W%k$LOfhH&9%GCno-'
    'N%%W6#oDx2zviKO>)Ce01p=sLLFn>jwyL#US|d5L2oBPmAu=qt%RHA8oCGG|LMtl|lEZ&90&6#d-nA$Z>6OE9*IUtx4ShLcJvRAp-zl1K})!5P'
    '9u@DsEs&s>=!DMP?!_(`)PlDmth#laQDM=Rs$K`}YYPb*qO3koUh&#{Fh@2SG*cv|e8pB!@FBwFc^r}yEFWJB}Q%2l$(2Q%j?vYuJ&{eV!1J!p'
    '09YWB!S?SqlVIuU<AIX<=rXFw61v$SCbOCL~AIG=5RDqk|!c0eKx)k<;$0S!$Bqp<JZqIqXmwcr55ZzE^F!Fz@=_8J*Bvg$SKHFeea&T=@X2ZZ'
    '}>_%9KX#Bcv`!wT?ZTvoWr^mz=g7`%M=UtWuU`7Wi@YhzdI<RpT)=lPV>;D02F_5W}0T7T0>lK6N36@B}`2N#k6Nlwvu6A5g*M(Y4FWRq2dtO3'
    'S&9L%uH5Zk)T{q5IP-96LKnFc>Lx;uZcZ0KiocRjkRekDh(ZiAK%Pvnfq5P#QNEbgks&~>F-pS$`iuP?S6buH-'
    'E+K4>}cw031lOXBE9ZIRW&*bz=y}7uBMMc4Reb-I;OE!aHGz%+Hm7i{$Pj{AcOxTCGA&@Mhbyf@#@h~uRKiK>&h_(yi_-'
    '&}*hSs27{Z;AvuKR>DJo_>58*^tqhy84fwqzgsEzuA~!Sna4b@)wr{U2smvwz0s=4&KI<T>kd$<b;vLw9i2`K{9%4UKid84f5h!eyE;7D9)|?*'
    'Sfc82IQg{L~#Co*3^qZxJYrA0U#Sr7nYpn;rNqhiwP&4=UE<DfK$8KG;I$oVdS9J?J-'
    '=Jj?iSnJ6sS&IhF)V)=6d7nzPW3kjqzL<UBP)64J(LCRKmH%#be<$@KK5@KInFkS`X$t?aXiZ#WiBUEDH37$=W2V|T6J4Q)XWbUZT^kW>#F<2;'
    '|dzgNKjz-'
    '}=4Gj!QQLW+a8EZ<?cUFw*$(Q`bRruCX8<xGc`&rNbl%0%mFeI8KsOPNcPGFv>ugN5$icpYJ4JnPTL%B}$B77kQ(bMU%clSxSh;PUZcXb6vr&l'
    '%d234tM4Rk8u`<mXwSQp+crQ&aDud&FhTC>(rBrGR~=E|YUN1cuwT@o_-yn-w~uQeHFlt-'
    '|SH&FhyS9wfX)P(X4y}XwjynVp0puxKTfb9ct57<7z?|U{33_TECzfN%(C|7E#r)=xu1g&f%yX0TD(gC>E0xUxNe9#|uQ5HbtA>4O&jz`t8_IN'
    'HSY|?9lnpMVpH;-'
    'U5Nh2#m5y^^P!6Yo1Z?5EQCMr$87e7B<sUS0tN3N{p#(i5p>;7``SSx|v1IlNOCtDqT8WqZ1tIFHHLk#F?jEutvZ~6RI4yQ?;K}UZh&FYvPMtU'
    'yu2}|F4%CPnw8Xr_rFjLklN9<yVSJjl=iL^VgSn`E`M5Qlpw<bEvP+M*;!zIxSB3_0Lqej_(ln{7OMwJhuA7*q0(KJ|~WPt0_0Nl(yq-'
    'Q?kLK%vGi(%^Wl<)cinaYbV!V7UQvd`Ah{4)P=&tVRVu5~6Uwa64L?-'
    'MO4h|&oB8)1jH#3y3A;q?cDevjG;_Z(o>j5@?^^_u^y4F4S}13#T^IVf$?2bV=z=YFz>7k?t{U`NU*mEB5!d}<$$u9}?BM)g$mwhH`L+sJV-'
    '6}K!Gld{Tl$tK3OPow2m<ZrqZPtZ!{e>A;}LU1z+uUFiRuRElgAvh1TmYL*rTbBAU*4rb-'
    '9a@1}VcBU{w%tZv(gOi2Tr1jks!C{E$M^3=DhubXDQ{#Sd>w6EQK2A_v{_ulhdEYRn=VgL^Ylo&LaKe>)~KU#UQ}!cy|4z0XghBTC&;H*x_XRS'
    'keY}O{J=vZR%CO+)UL-qQZjF&X=&rt*hg~aZM?R$@n&q^om-zMjT=4FFZnv2Wl1IQVQF88Q&3dH^tV6+iQ=~}-^n3fd1X~wV)gPfY#1Hv-'
    'c3FOx;K+o{rn*EyE`#p?G|mA(W8}`)L<MEYYM{fOl)@IY)g%jNzm2yAyXZ;K*Hx|Q0!s)z%<sZ523YLWKMPu>mgx0ua_MQ#9A+Gpjj<%qFEEeV'
    'H0wk5OF`92~qxm?8Tp7mrC&$J6Zjz7*cHz_hNDBgMI<pAnp9nkW8iR^PTX{*@5=TaJ8i^;;Q!D8SIH0(CMF1gbT*FtB|Cv#Uh?oL=dg?3{b5au'
    'l(2H^>lStks7EGHTh9NJKmC+_u~J!6v5-'
    'szBDSjV%bpC*^9wIz8QHQ)nd}3bKd_DWsyrf4q1C2hn*wNIa><`k<(qK@o5;$uv^VFB|0cZU(ea99!%6IphhtYdl5+v{9<Ky@>MbeY^{1+k^HF'
    'Zt_l_rRi`}GC|3AV$UCOXuj2AKQM|42lIXMt@1%lPaezj7#SK_JPjA0WB-1iETv-hNLWF^2XR*kkEu4eV3x0Ug|8&?I>Mp|eFMXW5B``kd9|y='
    'Ck+?TRGz+^+7w`h4ahin}(K00I=Ruqh!jr&R;-'
    '`w*H$$jiz9gf|kX!)r5Y=F4DSG(A6$ute47ygryn0zmE)ri{B)AwhFby^`st>;TJJ&~`xoju`zm%u<>MyBX8?MxdFqRLkJ^x&x3QPUAQKvsO(*'
    'A|&5`D<R)ESlIc(~?n59{-%6efNEvV&4?X5=%Nyf5S-Bir+L<gMfdu{GtgtZ-'
    '}*3fM}<F^w><VsT=(iP0a$AmW#ZJU7}Ozew_AbuyPU^(y#*Tx3)xD^5d@)vcnV;YLbIxI9UoJq<w~_4ncY1QIRws3yu!!3m_MT#{i2ebd1$eX2'
    'MxCIb6DUIOC%w-8SZEk>kM;SmW4fh>%jIrnM_gY|1>hfOS)f=Dt6AT}gOxGTe&1km3NrBg!I0RVMT`UDKZ>z1tIB-'
    '{GOF;$3e!gX(O*iCX?yaadRs;2BedzR(2q=LNpwz?g9o_2Arv__dx)h{AdqcCQou%AG*`m*f?B)yg0n{UZ`)%eX48j7riFK(NZ{<o%)?sM$#&6'
    'sv!0GbE&gB^I4p%l@)?9_8MO5SRxf6F$b4EyN;8-=Kr36<s#-Y`pvR@|&?T59t3ts-4pM@L-'
    'M;K?69!+AEtB94N)X|UcV;_9gN`(f*>^ME08=gq<p2xgDS*?XO~39Bkp<~GwLF}GzN5SZnmWno)FTje02AlozG0aq509l``#y`%HP)BdpYfazj'
    'f?sYP$l!diL(UwIHIHGUg+b^%JJ+Okk{^*1f2xdDJk+oZ`fz`gS5QIfeSQ}EP0pE5R#_NK%Cnn5N&%!!Xa51vVAff4rfoe6<s5`tY4Z&`!??P+'
    '-6rvdJ#py9dvr?&VrZ!=Tc5#4)*7$J=xLDi`Q-me1<3%F7BeM`i_y#@3m%(HaR;ormCER{kDgmQcq1|b5FEB@LAs)Am5N)!3+B*C-'
    '*XML9>%DObTQMc{f$a=X4ls7h&8q*6YC-WD@-IOKZ@~57fP)IzN^t%9y-'
    '{a4dU}?ilS4+naBUT<jbFIn^ZfJtiQJQWSgX1ih@+nZ9%5rT)@B}&=TIg4W2Rguc)l3GQm{Z34emcMi&t)R0A}vDU>(Jqge+IngjB*8^A{vqK8'
    'Fx!lCJ59k{U}LIHSZ(!EH-AnL^4v#kmxHm7dCMP(Q|*lupr89!smn;&&*m7yxJC0@L=bpJJ^o-Igx9ZKyxQ4nUBDvkoSi?412s%-'
    'KSodvfWrz460odg|-'
    '01u+Ch*V|lA!gc?G&k6Jrm|~)1;~QOzke5f{?F{8TR#FyH!X+nC3K7fGhp`UX)4LSMq`&`UC@UU@yECjX8vBAun^wDZz$!p!@yh|rEChip0B!<'
    '7Gzb_k(0w@l=)ZG<9?**gT)9Cy2A1V=2C+7D`ID4kNMzzNNh4Yo046Re(K*yVzw6`Z6H|71wdA=jLBghSlCZLBo=i&jH2506#P9P4^Fr7$_cxb'
    'UK0AM6>66E0$|ao_u;#L1{}2p%IO?C}V7%F89X=HT&wWKT@TViDor$I)buVSk^H6;d#pf;dL^s@AUkB?uz7Yfh0AiXl^g5JV`ZKc0_G%Usm*)^'
    '*X5(Zge*{*9|F_Ro^cqGg1h2_CAmh)-'
    'kEO87lOWlO_touuk0mi?phUy%Ii5u#$QkBnqu_ZO@w~}YB`{wq%+U%@lkZyKiL~S*oR)5V%&5F|PB(Mhc~Uo?G~D^*ET&~jQvspkmsH#*LpY43'
    'Dv3jh25hSv(??)fJ`NTr4Mp&w+iUIkBGv5E%X2J&g*Rx&%T40buCuXhLt4=I%pIx$>$2k=U8LJgF{&}BTa$aMO<DF)=Akx<vp+$>k!cUKY4~g('
    ')=pL3cXi*I*lq64u`29xFfcoWN_D?VdSAHe#Q@@i!Fjt6cf&)Y;s?sm8;G_&__#up&gAPCHny=*mJ_p*ce<~%Qw2A+3agFo?Y7>Uw%%Y;*8Z9W'
    '{WbIcpuW_jRN)=@w>-p>@0<Gf|H`{()BpKrt;Z^O^D843MK}?1S4N*LSR?zm^|q-'
    '6W8w80W%cCU2i{Sux_=Gc58dD8b;ORt@|>Cy>+H(nvooI?kZ(ImIR!k#LzQ=0WV)S_5BxO18@178kp8-'
    ')8sBiUzA%_Rti?f=nL_d~EwhD8dAEy@cXD{<(hOa29bowJ%)n;W^%ANoO*aehCe-w-O4Tpc#~gH-'
    '6GrBUTW28Xnrd{VyK&fC+0IB5#Jj3msAKz)L*3l&8Lrre*79zc#_M1X(i=dRP<ucfL(NH9xIO<e0B96I&ikb^IzQ<i9d#I$jO#SK^f;WHLpLlb'
    '5>tTPi6k2=+g>wc%oFBD*{IjYl1q@qSOP>Vuym-MwF=kC`4Cf{@wXp{Y&r|4-zo+ktCqPke;wYWDQMZCkgs70wM<w|6VJE#4*^i|F#$-'
    '%C?##McU$D<lG<lrZZkyHYzUfZ#J=Sg4<d{hogO%I{58zpThL`7G#CYSgDW-'
    'EaQ|yc=0LvSCb;9aI5pqH`8+{e{SvYXEvW6`X%HAg9v9@m;Tdd<N(g;qPTq0mi*Vg-XNE`Km7tef@PS-'
    'b@WGx;+eI9IC7YFeTOubgZS0(|+m^in56f09HpfNzsrej|n_z{vF_uXT?>Bh5uW``!RMk5To;TT$Cox)MW=KfEM$i8>^V!%g(=hu?#^T?l&8Dr'
    '<rbh1#dd{m9ClO#??~?J}Hm`l%@x?48KWE>gv!+*X&9O#;Dc-*^M_Dw6$t;8iy$SpYpMsd$)6;%5fmM`Vt`=f&*;mX7WC!*-'
    '5ChF~F0v%^{hqLQpMnJP04}>~%2~g(wp-'
    '2eDJD4)VHr5T&&ltt<xF1oymD)`3YRmp!l!T@f}{N^)Keor>Y6t1zorur&0!Hc;2O%3V@UhGJe#B3JWt$cVItFb5wF3^oZrTWGctiQxTpC9X8?'
    'i~lUl0(Z+Qil2TC4{$VwZtvl~Q9@uWa&Nggrf*(P_$IO$FxY}ZR4E<5U;L#xO<g7NN-'
    '&<#Uw*zNtElKGw8t+9*!%DyduHmla10Z_rg&Xw!qs!!5F&&;T$x)MWC)O3u?_=fxhOTfe(-'
    '6{xc{u98zO=7BkUn2<2cKKw`hQfh<I_W5?pmsvwfbf6~>6qMW&nICDil0a>U?UGdU&Nx{mhE<@HB|znlgn0k<P&^{%h+H72=m~E2lN0&#*#=ox'
    'UAzQdlyO9i&LI1*C&x}3G4d-xQ*d7pgj4UpT*O!hl}WXqPh!Up$?T4)3mjoZ>|B*ltBoTI1NY@hbf(E<@ofdb9{^-'
    '=V$%HU(XLuyC2#XPt`?~wxbj$j$~%+;=J?6CRhL;6f6QSxNq_I9sa(FX6YsVbr}LaON~QiM@eTsm+#TAAV$wX<Q^+*g<<9eNkc-'
    'x5XH$G9k3Pqv1E*O%&3x2B*Dpn&jFldSohurUvTMWqBEq^<8x!3+u;0n?F4Xvi#qzg_aCC4f>H'
)
ASSET_PAYLOAD = (
    'c-rd>@N?(olHy`uVBq!ia0vp^0zmA*!3-o-'
    '7PBv5U|?nl@Ck8UV`TK<#|(y1FbYN_cocYZKadLcba4!+n3J4vfK7sv)4<4RQK6(^>xB}dMXytiBuaYv9o#U3<9aaPg}Ht$`3qxW9=0T!@i8(P'
    'I(k@!9uW9!+xD0v+N;*#uYvP~AH`ywiEdI148mOu^#VRSSwPl!y85}Sb4q9e03gsYmH'
)

def unpack(payload: str) -> bytes:
    return zlib.decompress(base64.b85decode(payload.encode("ascii")))

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def find_root(explicit):
    if explicit:
        root = Path(explicit).expanduser().resolve()
    else:
        start = Path.cwd().resolve()
        root = next(
            (p for p in [start, *start.parents]
             if (p / "Makefile").is_file() and (p / C_REL).is_file()),
            start,
        )
    if not (root / "Makefile").is_file():
        raise SystemExit(f"ERRO: Makefile não encontrado em {root}")
    if not (root / C_REL).is_file():
        raise SystemExit(f"ERRO: {C_REL} não encontrado em {root}")
    if not (root / "graphics/party_menu").is_dir():
        raise SystemExit("ERRO: graphics/party_menu não encontrado.")
    return root

def backup(root, rels, dry):
    stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    b = root / BACKUP_DIR / stamp
    manifest = {"created": stamp, "files": {}}

    for rel in rels:
        src = root / rel
        existed = src.exists()
        manifest["files"][str(rel)] = {
            "existed": existed,
            "sha256": sha256(src) if existed and src.is_file() else None,
        }
        if existed and src.is_file() and not dry:
            dst = b / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)

    if dry:
        print(f"[dry-run] backup seria criado em {b}")
        return None

    b.mkdir(parents=True, exist_ok=True)
    (b / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    return b

def install(root, force, dry):
    cdata = unpack(C_PAYLOAD)
    adata = unpack(ASSET_PAYLOAD)

    if sha256_bytes(cdata) != V4_SHA256:
        raise SystemExit("ERRO: payload do party_menu.c corrompido.")
    if sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload do shiny.png corrompido.")

    tc = root / C_REL
    ta = root / ASSET_REL
    current = sha256(tc)

    versions = {
        BASE_SHA256: "BASE",
        V1_SHA256: "V1",
        V2_SHA256: "V2",
        V3_SHA256: "V3",
        V31_SHA256: "V3.1",
        V4_SHA256: "V4 SIMPLE",
    }

    if current == V4_SHA256:
        replace = False
        print("C: V4 SIMPLE já instalada.")
    elif current in versions:
        replace = True
        print(f"C: {versions[current]} detectada -> revertendo/atualizando para V4 SIMPLE.")
    elif force:
        replace = True
        print("AVISO: --force-replace ativo; substituindo party_menu.c diferente.")
    else:
        print("ERRO: seu src/party_menu.c não bate com BASE/V1/V2/V3/V3.1/V4.")
        print("Nada foi sobrescrito.")
        print("Use --force-replace apenas se quiser substituição completa.")
        return False

    asset_copy = not ta.is_file() or sha256(ta) != ASSET_SHA256
    rels = ([C_REL] if replace else []) + ([ASSET_REL] if asset_copy else [])

    if not rels:
        print("Nada para alterar.")
        return True

    b = backup(root, rels, dry)
    if b:
        print(f"Backup: {b}")

    if replace:
        if dry:
            print(f"[dry-run] escreveria {tc}")
        else:
            tc.write_bytes(cdata)
            print(f"OK: {C_REL}")

    if asset_copy:
        if dry:
            print(f"[dry-run] escreveria {ta}")
        else:
            ta.parent.mkdir(parents=True, exist_ok=True)
            ta.write_bytes(adata)
            print(f"OK: {ASSET_REL}")

    if not dry:
        if sha256(tc) != V4_SHA256:
            raise SystemExit("ERRO: verificação final do party_menu.c falhou.")
        if sha256(ta) != ASSET_SHA256:
            raise SystemExit("ERRO: verificação final do shiny.png falhou.")

    return True

def restore_latest(root, dry):
    base = root / BACKUP_DIR
    backups = sorted(
        [p for p in base.glob("*") if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not backups:
        print("Nenhum backup encontrado.")
        return False

    b = backups[0]
    manifest = json.loads((b / "manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {b}")

    for rel_s, info in manifest.get("files", {}).items():
        rel = Path(rel_s)
        src = b / rel
        dst = root / rel
        if info.get("existed"):
            if dry:
                print(f"[dry-run] restauraria {src} -> {dst}")
            else:
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dst)
                print(f"Restaurado: {rel}")
        elif dst.exists():
            if dry:
                print(f"[dry-run] removeria {dst}")
            else:
                dst.unlink()
                print(f"Removido: {rel}")
    return True

def do_build(root, jobs):
    make = shutil.which("make")
    if not make:
        print("ERRO: make não encontrado.")
        return False
    cmd = [make, f"-j{jobs}"]
    print("Build:", " ".join(cmd))
    return subprocess.run(cmd, cwd=root).returncode == 0

def do_run(root):
    roms = sorted(root.glob("*.gba"), key=lambda p: p.stat().st_mtime, reverse=True)
    if not roms:
        print("ERRO: nenhuma ROM .gba encontrada.")
        return False
    emu = shutil.which("mgba-qt") or shutil.which("mgba")
    if not emu:
        print("ERRO: mGBA não encontrado.")
        return False
    subprocess.Popen([emu, str(roms[0])], cwd=root)
    return True

def main():
    p = argparse.ArgumentParser(description="Instala Party Shiny V4 SIMPLE.")
    p.add_argument("--project")
    p.add_argument("--build", action="store_true")
    p.add_argument("--run", action="store_true")
    p.add_argument("--jobs", type=int, default=max(1, os.cpu_count() or 1))
    p.add_argument("--force-replace", action="store_true")
    p.add_argument("--restore-latest", action="store_true")
    p.add_argument("--dry-run", action="store_true")
    a = p.parse_args()

    root = find_root(a.project)
    print(f"Projeto: {root}")

    if a.restore_latest:
        return 0 if restore_latest(root, a.dry_run) else 1
    if not install(root, a.force_replace, a.dry_run):
        return 2
    if a.dry_run:
        return 0
    if a.build and not do_build(root, a.jobs):
        return 3
    if a.run and not do_run(root):
        return 4

    print("Party Shiny V4 SIMPLE instalada com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
