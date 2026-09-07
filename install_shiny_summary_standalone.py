#!/usr/bin/env python3
"""Instalador standalone do destaque Shiny na Summary Screen.
Base: pokemon_summary_screen.c fornecido pelo usuário / pokeemerald-expansion 1.13.3.
"""
from __future__ import annotations
import argparse, base64, hashlib, json, os, shutil, subprocess, sys, zlib
from datetime import datetime
from pathlib import Path

BASE_SHA256 = "31f5b28efef7d3cb5e36c703ddc905207c3586c6cf245fe87a3ef3dd498fa283"
PATCHED_SHA256 = "1b5ca4a4f7f385c99892c721f474b52fefec140bd122b93df6c9ba54739f5f5d"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"
C_REL = Path("src/pokemon_summary_screen.c")
ASSET_REL = Path("graphics/summary_screen/shiny.png")
BACKUP_DIR = Path(".summary_shiny_backup")

_EMBED_C = (
    'c-ri}?Q-KdvMBh!o`T&cw%e|jZAtzvPxT4OmR*{bWrZYHbseu)K})pEDT>r3DSu2)ZR|trOWfzUZ?aFanF)XdNbo}{xu(yZ>FAlZ'
    '2p|C@5{b-2BJ)3NckC=Cmht1%@$O7#`{Bno{}FwgnYOEbxiiDiv2@=?rfbjCf_vX{L)-F4i_mtoZDv*wm{UEx&~ig<!M!;SJ^v+9'
    'HdTL*p=&D$wI4^;{k=6#lugXgOn!M8n|@+&6Km|v=01!&@%_a$XZCnBcg(T%;5ieRc4$3^nz>t#Ftbs*zv+B2@~vqC@YFZw5B50m'
    ')rN`qt{K{%YdWJK^lf*l>B<hRS^CS!21KZz9ozkqSo=LQNeqtTjT7H2cai=wda#_i<tK(b^W4$Q^uNGJQzefU%-pd|-?e<T46zDR'
    '3&y@>CB{5A{qSX!9>UyotT0Th+uZwN0ew5^ud^gB_{UK&_W@g@M>|-Uj{W!K$f9aMj6lPq;3Y_5JF2so!PH;0(|{$n2{m)|doVU#'
    'SQbl5t%0|2Cy7rq+;smF>p4*|i&|JgVsSz<NKginb>hpT`uoXtC*D(P?**ahhQW^5`?%_CZb4R6+(<=rkfJjSv6IZgECPya+&ktp'
    'vw6I5qW}g7e`i;n-ena99!L3`ogHI9^kIZHASf_47IWA}hGX4_n{WPOV%-BZ7`?$@)M+$ZozbUu_w4G^sCV^S>+-5QYIo1CM#J{7'
    '(=w{XwFkeoJDmZqU(2rFYz(2s=<@1gOVqAs*FL@K4qJnvQhk?Z)?9?4=Nia?ea|tFhQ$1Qd-{+&!T!}{Z#cRhwma?NXJgL*a34%}'
    'f++fN@MMSMhaW4(k8Stfga1N-@#CrKjxFa$W9|d92GTJaPT(02yixc7E6}%qwOBv0`t6Uwk2^oM=>G@9#&8fdHSBw%HyT`DUN-ul'
    'M}yOTtJNL#TiwQGi<+j&+8;-)kF*#D93DpKFRY3I=fxaJ<k50o3MWc!_i>h|Fa$X4jPb(v;mp8+&nyGSEpRus@E|Bg-r!Svc>2LO'
    'K&T6M5m=M#CfD8TLF=q$9MZxeS`EgxO41-;XV~Z%M`cO&bFXC_GxGmpJ5Er#H%`N}V53g!d}!3FL>#?}(Fj9x{H0=?S@)J3SW5!y'
    'w=X^bv>HMi%(o+G_&0}$Kdd}7CIGj7?-{i^0))RRMi)0g2Sfp9si9pDj2hcem&n-)QN=c5@9I;lKWdzw8a3KIv>R|Mf_%re!`yoU'
    'YC?iG$3Si7_{DfMorM(?fo}AAtwv|`*T$t$+b<-;eyh`J^t(pwfacJ+gGub%S&sL_M?uHs&jI}9hrVe8k0|7R{b9e+9*)jhzmK}t'
    'm(5n+s2!H5-)*1%M!UFngeVz8_iRhy_A1eS&}*HxTd*9*qPasjENIT~aQdNj`Wvtcqn^X6flh$^_KkWDdv0~ljC%b|R3TzUjAU5d'
    '9_+^BR22jtm%~4`s<zIDR^tq)hgGW8v~|w<jZXp$P`S2FtKS&3qP})hb%+^U0>MXh_J~M;mwT=~HXUQYq$uOM4aDnseqh{tJ`v6Y'
    '<VwaJw`p$xT^qr|2TcL@NNBzouC)Mya*T~T5YWHuj2}#Y?3vEyiE#&H4rlp<*fmf;aMS>I0s@*Z{JCQpHXH*k>LVm>J1>S~&p_;$'
    '7$LAml#7kP0%5`gNif)%Sg@^}U^_Lz>o%-=qknqE@nrNbnj3o+1ODCL)YU#~^nV*&^c$a}+6NT_{yoyxzHFbxm8te|rB<!f>e|{J'
    '<Zw}atX<o!)b=X1L;X-%t)4oRdd1j<v1@DhuKPVW`HgrewWCUHzf#}LsXiKfXaGs`ksF6uBk#A)jQAg{y<4l)>si2|x_~T=1@KbS'
    'R&RE$TPpN=wNgK*>}FSw!DDp*4v2&$q66*0Tc9eqbtl9hhfypjzC@`*I?=00VMxc;GamOINJKUe8Y63<c2J~e#>f3_Vl(&leTYJ$'
    '=`a=0;_wih=K^v17Ko&R;6d6Rf0_EIF7QpWZS;IE1Zf25H-M@@)nl=ra0_%>A6tC{MsVg(>%sD^cgE9$jeX&{g*z%>A1VgWzqNC3'
    ';eP}e+HqoERS*`QEI7fg87_Ql2RL8UHB{Nbx=Q1F`x$rS*!P0KfKw87eYCwf-l8oH@+9nXc8ZKWA7w4irM(%Wl*2~B$GCeDXs0D;'
    'B=88*H;GzaU>O05TFwGgP!uR(Xx5zO4O2zz*e>Wxv`SkuZvuk@4Qc_saYjYGoKnwk{&<7*w5T1xuuZ>-Oz0%~L_Db;|DIUZT>1s@'
    'Yw=IPy3`8subDlGe>f;x%YczLoxJ&a^5zYwJu@*<8YB&u4^)u&=~d^dKN@~$UABM+oHwpJL*u<stuQ$<^cLd>!03O}s<oqfP0(v5'
    '1UPPoA3hI;mCPE=>;A=c_v~|a4PbL!;$4H^a%#c<`i;(6C1*0g(5_Bfjc#_G(<=~e`q}0Et3m72)m2U}a7ec=uCmJq?as%%9(s+z'
    '5D(~f_qXgyoyJEH1K^0hZ0Dl3(fmyODi62a8~`BboqotJzPQT6_vzI&!bZZA6r0_xeWGXh8x>s>HgSBYvy=6~GJ$~_f#Zd+$HOPm'
    'k5N`MrxqR2Ch|%=nT?6ZPHrkEVQ!0bO9M?EcKE_|I>tutJmAPP18p92V{H1q%~)v6GhlyMJ}{`c7uW=UgQj9U@6--9D@H*41(?Lx'
    'bQ#kM9zbfP0r)Uz^UfiTU^4y+`o6I^G6I=5bb-B$K%X!dPIz-mC(e6gwDDsTB&8oWPf9dy%&hR?CE%^8F>SJPt(yyf3J1fB)EYNn'
    'xyG0F#6|2%jbTfcYuf_Mn$AR?bL+C-IV;!t4A|q<*fL#ePpxSumur3MA!YEcS!>+r{c^4Qa4bA|-b9);vVn4q+wR1kdP>*8Aug`U'
    'wI0~cV`AXQKS~a~XTs^_^lbMFLZH^jR?0Q*n2(k_5uH<G;5ug|yKb6yFHJb%WikV1RF=$Ku{T6xWK$(4ZJFbTs5P53a<Ou)FT99E'
    'MQdbo*f`btE&D44B)G}shPTFhe%jvT9Jle{Gg(I^8;Ce@Z?l027Lo%+oXR;+1S`pbBA?v1dMJXY<UrvkdmdUicd6vzR-FE~*|_CQ'
    'CI<`?5F`r8;x;)jgb<N~TfuX3pfEurcO;DY<iKFUNG=S<f^uL;0?Ta%jF=JSz)@tHTP+;Hlk(_Rh&;F1bjx{DF5PycU1(&{t(!-)'
    '#B*+QArPm^0fCICU=YZzA_=Rr(>Fjng4GH@Me=+=)HYXp+GnU_d1&&mnJg7RJ+9E8Bm;uW2~#DZ5P{wK-cx|84#7c*&7GoQ#WNVq'
    'kj#T4G(b`U1qW0_(7td+h6f=00x{_HW$aj22)Ycj%;A-le`_A=(me8|`9Gsx@-=xXXDZ_f>Z5OEC=Yf*)z~tG9=u~*H3#jpcB8v('
    'H0^K;^p>qVn{H{0kNc5%LR?3eIO*RTtfR<MRWab-Iw%|5;)X`I_!rsV*sopjOKC5RixtIqSW%3F71j7xQS5IF+}DbjehsECw$ipS'
    '@a{w7(e_||JC5y`V*^A9<Tk){m`!7gm4aquPJo4Mml0HwNT?GMcH@cG<0<XYw8g0RX}U)VB*2`Z;F#Ar5;J4d2FQR20j_pH#ye5B'
    '4hTA^)b~?pr~?`Vzt}cDp-phd@Sg7+IHZjyJA5!^3pB6!aBy!ioIHS7L&lgqB*b!75(&EsCG0DdaHvqikyvx3{V^foK+LmVktm_I'
    'UqOqg_;sWZMjh}`Ck!QUunRa49MJ%dxD86Z=NPW}_`*<N;;koM;<$i`IUV|2!Iu}qnoRRHgDNFzc0_6q?8m?MVq(~(86Ty0#6dh)'
    'tN<$>VGhV4+5-4DEPgFU8QPeSQ+U_|JaC?mcZ1d(?H4d{V@g-~J4R^vXg_qerj8i|2GGct?GoaxX6CyJFW6J?aG>yl!!!lp&WI^s'
    'ALklTz!7c!sx<S%7%gPCC%hzPzE8Zc)idZYgUQn+j0MELV~k%+m&m|dpe(Q$KcM&!*?iI7yIoE^*W+PV!Nb0SheHJqM>;%66o9kc'
    'Rq$}2;^8=Ek$?vcH#h)1umc-d;tV}*40Cn|ERX~z_wQB(jw0LP=6uWb7SjhZa>W+)?P486!x4}(#*{2k$01>*9&?0!!dQ|cNHhcF'
    'eH7ynmK=D%p~Mk(V-8y1BeYagcsK++2*HF?17N{_0X$3=LHI)K(C|%^2;q<f0=Z-6xj8zYmC=y&Tya<7ihBxIJW#mep_VHi#W*;W'
    'cELU!4Z9K&YVk>dNC57TM#2#wfyrJV6abZr6Oe6w&KLta2|&KK9BUk+jWP7*MT}9XczPjWR}m8S6|vwjJ}oup<31uGn)V@`kI}5F'
    'bQl~;Qo=6HI>O0OrJm*t$AAPTU~U^-E(VS9bYRYmAs(00h09LH4Z38R`ye&A#vrt;NMzdFE>>1G(n4L47WNcrVP9r}oLMBLg+rM!'
    'A`R3ehOjG13;Rd|F@FG5RPh!vB{ZSX$RuV1C1yA&(bbWzkp=nlOC?gqn5@K1%F*2t=xFzO)S)QeWuym5UXb<)thR<kU}x+rJ3|(s'
    'm>?-{jJ+5syEP(_y);r#loT3*ff@pyo&jDDnqed`7>-c#LD{?y1>X=RtL-HW2nA#!$q}?6qD>P?%}V<t<rLxDWLMcH@i}sc3^S4>'
    'P>iVRc1?}MO3;Q3)P}Z=p7%so$9Ol&*ar#LcsWQ1=oajzmlC42WCbZBPVFfI)Iq#=G`nS=cFS?ZI~0|os$yY}D4{0pmc2^-D2)Xs'
    'SayYe!3kl8m$Ew`L74ZRIpf>q3!nn!3feZzbrLtsc9AV-8QE%=CN8m%LqbXt4M#D>9FlBxETLgf!U~}w#tNWepRkfd1Im@8*@A*$'
    '`ZIxtIayTz5vDWq+=?-=LAG!~%_ScJ;R^#~!VHhwg+?j8Tv5-GEA|!6agdfXQE*T+jblaAKxLvTv5x(C+aMyUIzh9Bk|r7?m{h^|'
    'A=59Xp2IaRP&GVv3KM@qY|+u;z`<Hd?_$O^JtnFOCTa>MYO%U}K)+N>)KI397rt8ARb;9?Ny$2_2%OcAQPq%k1~=*TEI)wNMn_QL'
    '3B?>j>2B0^0~^rtq4Q|~JhSx-^#a>-x9=C|adC4?z7BnJVtc}!6b>No$qfu%qq@C)uzO4QngTo=K|WrohQ`4j+4v@&6&S7;A}nSF'
    'B$5N#`#bEt{aStN?j@u_Fq>kd*-raG@dF$f^k~?)sE)4A&j+m`!`s1LLG_wieLt@{2nd7rRX1*NaFAQQfzCV<_=Cfuu^aL~)#v?P'
    'B-ft@KNn3R*^az2e;)o^Vm5KRv@0Iqoz-pqK5TVq?w5^=_9^RS?`ZFI|8Re|OtYx7+8d(1Gxog2xVJ555?|5xyf6Rje*zz3Ucz)G'
    'FS{z9HHHo0sYvd9SN--yyW8lD(1)@M2Y)rce)}xpo1Urx6h>a*_55n+SI9lli>AVzkaH))-77z|I%lKyuyvU;4_>w3ZZ-k0WKqnS'
    'Q`)7uUdE$269jW)-d)m<Sq6uG%S4{7=Xr(M_8oFt&cS7qUU+a9W#k*D?BNyvf~b}JBa=O%WAO-Ga|bzSrAobC4l1d}S!;0GZ})~s'
    '%aWTcl?_^**69!qfkCeii#QOA6L*TP>7({3x?ockUSs33@%soJv&jY8_yssWA|vu!p@%qa#0R1UFIjrbv6=H#_R8bT3{7&v689Rc'
    'i$=c>WRKu0n$OKfr=$ChM5z1De8zPpIJXKjX5zq+^23+86~Mv9KLG!xFB^OGgRNu@Z+7UV7Mxb(PDfAC*kNGaIWHAZ`o|`e#2~3*'
    '3=h2w-Jj7Y49Ab*i7Tj?km0o0kk+dPCv|!*unhX;s&E~QEerZt!g)3`zo3f{>zcH1&oAn?p6WL-tY7lzO1B1#oZjbmnhTX=gNR()'
    '9W)^JhM$F7{)bkhKSbVNtL`4F_0EAyw9eFuRIj0}_t(ayfX3mS>iSixv3h6GwM^?%ABu60io2Q2eZenW-d3Nh)wk$si2hfxc&0Wt'
    '-opO{C&|*L_Z(HY^PVrGI$x1AJ0MD(#J%jjWp3lAAU2}QtTE<)NOg{&j<{4JVuFtOgGTmSs(TvO6@%bn7mOpWcUV>HaZFHoJY96%'
    '#0NyS6`as5)N@r=R_BHFxbVoZgVuEVuEvY@)S|(I?Y_LLoycG3=41j>dUv3FC7#cL?8^ndeRt=%r{2O1dGUc<Y}(Guii!@EqC4`+'
    '>n>)z^hhoR3BKcv$+3?YA18~YAvF?Z7r;(<Q8O;uts8TD!oQy?->v64|6WsZORVok;rO?rrh?7+JfqgB0*_O{hn`rhM0e(MTvS(z'
    '%<zjS*i#B%8;XL11YJmNjuJ&ut45NVEP<rDI(U3*DN0&O$-Qq|?j(4y1sZp&GIFkl7i7l~g$jwf<P<K7c2%S{J$$Yv=zdp0d0@Ig'
    'K%!`0?GSw;Zfb{O8Fmkp^}ZUm&%~Zk=nf7ua|p+jLj7ocV6N+egYXx<k`MQEXglaJ-(1|^gQj+a@<^|7A#Rax>bE!0SG9V}+W=J1'
    'W1}AdiJd(VjV`0lcb@0qHf<93imCz$!Ou3}^ErlPKBvARsUg5bP21IcG@lb6S>KK~{sM5%9dmlZ-Z|l0816_9lEB=j*X+zA*D+r}'
    '|0Y8O$pdJbiNtE|YC>Yb1WsHu=CPBvVp!oA#D)bZu^|En1rr2KYl6P|T$aG5wmV-?IeW(m+Nh0~W|}NsDp-<_{S%6s(e&<ZKM3)Q'
    'I_tn1d+sFhU7k2>{ne))`3-ybTz~=`m<D_PY|#A=`ZD__vfFJjrn~8x9Uwe%h@qa(EOv*;pRO_|92BCB_;Ck&yWw~yVvSkHK$`L#'
    '2S+0LP0vI>{JlLo`_Md*4U01Nej6m%o1>UoBeC{IBgEXwxMS;cW_iyq{KO5At<XzdIw<(Ot`U<cYd)I3?JWXc1<ek?XArkzGY}G6'
    '9C%>|XK9GI2#Cmt$S|ma81KUUGP;L7W%+wI2k|uENU^4#|I&t~AMh!~bHwv-Fo#3kv7$nf9}k}KHHGJqy)j@lA_*4g52rz=X*8HO'
    'UyZlHWkR?CVXu4L>44BC2}98Fv||S0N85U`CSn`oJBt&I=!C<>6&pBSIQ04!MV!d1oO<IyGvcH|B%3rEoq%XOAu~KsEWpAiGo79O'
    'n?|R7(QTb=>}?wQt{SdAJF|dzhi34lJz=Ag>L?P{v<=+bHXQ{)Q7K0h4wanMf=D8ZO`Wu@jnJN1vI!XWs5iG<F*){Fzz<)DQcewg'
    '@BfDDYfq*>LCSLQ@g6?l7bs+e+yNY2a5~#~^z2FOHjKZF(`J2ylTc=$tB94F7fBeble37h^SWxx=gtc=O<XMOiG_zvk6n`mSv^YC'
    '3#&>FQ3@%v@4Li_bqx_cDdIW@oFfEX1N@$9F!VIlk%{;5G*!GD*;OJn-5^;C|I#8V-HKyCyNsl~rUteV9KjLev(OHSCTG6+lytz<'
    'ftKnG;PWCF;CmA?hq$43HF^tWF*?>11gG|W;}IljWY*dVc=H!v8-PjC6)F@PNi8W!d9cX%@&;O>&Q-oOTT3hC?&n<Y(eDt)3oLbe'
    'ERGU&kXMXYK!-LS@#z}M0`UPst%?z7VJX!wJ+(_%)W+lypYsVuyAkM%VQMzBWNB+M9JYgxrejZr9y0H?OO1+9$Hs^9mVOewAQ;fu'
    '-N%cIG&<DsmOII*(y{Ktg5oRyIKWT9lG-d(iDu#a7o_jj^V~w|e{A)9Z;FhpY5LmjPsjVvqtlB-Kiexo52LugQkgBl2NO<1-x>l='
    'uUryka<(`Du}I?EK$+w%V!uM~H*|y>cZ@Q5dZhA%dR*FL-}LphGgBL;8?~P8FtdXS!$N9Y<{W62<hm3w;&kzUnl?<&P@2g`l#G@%'
    'D_{p~Vq73$LbY}`OIXOQ%+~kRbfsEavH~d#YK7;XKZQ|T2A@cLEk?i6h|N0H1_`_uJu%dE&j9u?_(Nkn=FAX}rwWR_T3o?^Mg6R?'
    'GN^EvS*G(>bCv{K!4onIcGM~#I6IKa4w%)>L@k4IZa*?@g6lAJO24JS>M51b3-skLf>Y40Cxe&So#zxW&}^<#q9MPFz+rx{@P2b6'
    'jmi$jcW6zg;>ZC`C}yOgfW8%2A;XORNcU|r`{5;7W_j1c4s)v%l`|7d1`2f)L#=Rf^ir+iPH>U4q!Ky~Xp+%^pFXHjrz}$uWIMn='
    'tJQpAhim!_62lvyee>QP53OgNbl_W{t6&*5uzaN13}}cygh-Gy^CWUtYGwd}<zyzNyah)iQ(k$4TR;oI@M>okC^+^!iw`lo6N-W4'
    'bM0ROiu0frRAb<n(Q80~;dHewtniXsVtFO?EafVWX9a|gOB0T+t0(AIuL{|y{hoSEi@0bu(2T3sn%Y6z#nK+^V3($yw`~fRifZI6'
    '6><W!N#s??!edNPgUG^{K~o<rXVMO>S?*Y4C|NX2)%vknK6`ah`U8DuF>|vwJ_0LIj{zisv<$@36@kt7Jos;b0keqCGOG$%{ZX&x'
    '#tR`=%-Y?L#1nxf_Ieq0q;sU8Kc!|NFnOD2kM4{`8QRET>Ro04<+ZMS77#CsVj7bP%=8=xOH5oG^jaw%g-f&;Vm(5SMkr(ieMuEj'
    '&T3jHX?dW5yO~F*u()Z_If%;LM?0_?OU#sjKakBMJ~>#^EWl{*M|+@Ng{9*KCz4wYz#vmCtWpd{qJ^TWe3?bH+~vYb0u9L}TQFM}'
    'OyJ`F8RY<~r;#B@X;Rt=^tc&qlEa}|r_GU2;}aLE$?Bmu=QYu`$c%J(tK?oPH?l>;VR8t}c*XXt*{QhzcGff<XPH)ml(AViv1_u#'
    'YU;9c5M|N<UI6I3fK9{9PMPpy@*Z$Mh?q#S)=sWnuz+Xy2F!aY2Osta$Ru)IZtF|d{LQlFa<z}h5geU{E}Nc4d@zcYS|eTT)_LGA'
    ')O)a-zKBg+RG9@8EvnUiY(4fU6irc0$>aqRvbK%(IL96`&sDTq_brg?B!eO02ZgRK#aqs{WMkuA5O5O~qwlUg{^DlHEI5m67Ji2h'
    'KcGwXiKRUTAFT10_G9)$K@U;t2<<haXJktxFOlAax4U#N!T6YF5TB4T0V{|)<vMo*?~EPGorVt;x<9_d3qtlM0tik$&!7CB{O}pz'
    'b0dy0wbFQ~12npBXgpae8ix?$ZLpYS0Bb+43sP$(NU2psG2_aOOa;+(Vnqs<!eUL6>Ft^R|Aqb^16~808;dfs@V6&Ly?nC6hjWi?'
    'lxygXt>QhvlY5S#U7*GTl8k@hn`njOORgM?AX2fR;iei|GvL#qg+50c%HwpdC-ZXSZOH$sFjoZjLmmZuZo9BM@p_bzHqjC{2kK~='
    'baJfJ!SGrsLN1_Q`~vfBO#ZeALTi#oYZ4x`5AmDRXr4j*cW@Iwu#Y{Sw(q7CXD<GLVZxebU`2PMQW<Vjsc5$*m9a~~f&F(Y(TG1X'
    'L(C;heB1LeUYPp%4!S_55P#-R6q3WP<qW%?J?#2n*05{K4!gF>u<I)hdw*@iuCFre-4%y@ytZNQ77d$)rl3v0PnFZqcR0~=zJh}F'
    '^!_<^C?e<K(VpbPg1-+EzYi0?j}pI+Ptt)g$jM8w{^A}q+TGJ;yF0qB9c)BdCwA1#1v>$?8ilOc_MPpfLTRNZn&=Ea)uKJGmeE7S'
    'T9v)LfxnJ$^vi><mjl0FEd@Td7s#JQ4^vgf#A+?dSTJJkMp55Y*7qU(wYOiYZ&?{!s&n3OiQdt#B);=x@p$M}6vG#LM2c@{Gsc}b'
    '%c3AF{DZ{jZ%QOFP~T&v&jU_^DD&z|hTc3;@MKTI2i)ND4u7!d5w6NB__psZW>9dD*xpSP{bD}B+0sp^R11IpS=Dz7rj^bJ@#mk^'
    '-hRQPG>I$z{IfbZETTXqbH;KLs@Ip9(a};9I?R~R(Q&y6A(vQgHnk)63}kQ5m_NTWrsh0yiqr*=RRhK@fd^oZ{2vUFQ-{t@4D^d;'
    'A!VHx^!fCy1bi3@3?Wzt25Z&*awud8LH_(CQL7iRS)Q(BNqVSdO=V9rmFjxVi`~PLCx(<p<u#{OJNjqL3twriYgPxZIIF|m<<9r`'
    '&E}G`%RD*`HM2X=P3~anL%w>v%H-%Z>AHA^Zg%_YnO)&=pU%y*t~IOel|JwHmY&z){_?AKJy??<qwK3_X4Oi3-rX-8$2h9Op=a=1'
    'MHF3qnccWwVW1|~#2%9edf++sgoQfcKzRc_jt)VuCkPlXhgoS2lShuRF!d4zQE>p;#$oMvd;73{w3(07L<*%P2_+Mo`x<N>uZ2u@'
    'cZ-h9Wa_5ZoYVe#=2TYJ<r${d#iZ)rEZ8VWQKocMd~Bw2TdirO>SY&dX?bn0x?6TuA_LdD_*1>?j#^%Qtd*V=PYbrLIqkg~m)J{i'
    'i75Tv7QJU;Pvh{GCr+AS2N>Tu5KsAB)Azk6;>w)U(}NoU4Xd!+sm2tapj0A_3;mo7badKbUP^J&4v}($?jW}Fce==-w&a#LW{TiG'
    '>SmczC7S^cf5S2hr3U@Za6N;!<A=(;ys96cnmiz+?|HK*gaqKUKQyM!%lyIk#W=s}0%2V?I-O;C%)#+ta*^9`pwhvLXW^aci}Mf`'
    '*f(8#*@h4A=JqqDVsR{t;=>*t@|;wRNCY%M(39tXF&^0kd>l61I5>LVM@eALy>qEApdjCx_~w(FwYWU#-IDy9B_ygHRI?WqEda3z'
    'Kr6{;7OIxDt#sM%G8O^ki~{b_>QeZrGl2OSzm0~i%U-83Y`rOIYGrSC@4YNrYhfUsS5-6DWW&>m0GfzF>pJ>%Q#oAEOmudxtjI>|'
    'TAAb0s`AoD$-eH)*M?wP*JNtt%^3$pJ6Op(nKeU6^IBp{GG19`QzipStxFx<tCZz*>)(%>$X83V^?$;&j>=7IWpmHL_c!<KSC^U7'
    'DpsDuWhS+|o=NQ$aGj;CI`zG!_|3t3nCC%l71qLBdL_=13Q>Ww<edj2<pC#5$^gpZuu(XQEM64HUt5y0_m|nOS}mqlT{{=zf#TLh'
    '38e`kdn!j+l(1iBDpEwdwb?9ncAI*2E#!SrJIo|+j2MAld^`io?ai*_3RYz?tA*1~mBl8OeqwN9=_f|*mVO?iw}bQ>L-N*SXc*GI'
    'wwD2b3ilHgI7p`W%;)qX$T-GaOuZhneHvT8QZUwoo8#N}pFY4r4z<~bTJ`ol3)P$&k^-+*W$<ROgC%&i+U@(#txo6aQ$>8KrvdUQ'
    'sQ_yXAnLF(z}?&TSN%r!q7?z$O95mkG1M8?>I@+8p713GczF9BGc#{c%#DOwN)PnLEmAandor<Hrc!TeJd=PTnv^Oz7+u^y14--|'
    'Z&`e~LHoa2qrIlQlZC_5QMSL5IbxZYxA*Sm^B;Lg-4gBYlI^6Sl2_%1NcbncJ3L>w^rRg~d6Ri0s{$WIgA#Ywspp85L`8NcM^)8#'
    'U&+d{Q%2N8dgqj^ulPGe4djPPrDlu{^fcSZwK{Lg>Bp7XbJjhZE1I<Sg;(Ls_3yOww26=W*ptYJZ_(L1+W7Gg3Ml>ckLuyqKUhL='
    '`1|PVkDC<2X71aMxOrv(08Joz(3f^F&H!u>I}xCbC^fw3Kpg$16L^M6E?_LxHRsYn#W3g0xZ}KN(y^hzEq*`HF<-nz7>(fUGl&E2'
    'Q=|HIC;Geg_5XCEA9eZ1?pJ+!P0>aBW9wr<Hxjf&KiQzACxz>ROO(*-mBNM=050Z;Jy`e{wI}1=sChjcUUk2c71L;cEND(M%!5Fp'
    'I|9K#;XUpI4}zd+#K-jeBjf-3fBs(sitMq4mN<%@Hnz<f3n6}FY`CU}{ogxwXu=;e7OxE-cLbXhK|CV!+E+|M2+fXeYPXg6`)>Rl'
    'qlsJLSd;y)*CP@?heI>UMk_&%H&9*B_t<v-ZW>lFUico(0wy^IvBb*+erZkO{J_%iV&HoMc;m9sZ*{Ji_`-q10h|N8<2`AB?@PcB'
    '1n^D+j@iF96ySHJ{hSTFg(qt{zVflvzif3rT*<)yZuxMEOJQLf7ivsdW48+bB+9$|wwMZQ>Bi``!3yiCmVmzB+T9CQysH$SHioT>'
    'D>SnJ<7E~0lnQ9=ph7C!SIPz-+TG8iK@Y%pT2y{Ok-KE6@!%HKoj{PeabN(8!(`qd4(-(T@ZJK`4vCK#CC|44%YOtWjHxZjxF6Zw'
    'DT15J-!uKppl-cb4zFafV0$}EPSS+7Z~Z>xnFVO<1{?3WxA1ugxqBb?5?(EgF;NtVL_h+j<GkRlN~YH}4r_akQ38q8!;bX)nd!tq'
    '@ce}XP^Xq_`J^IJ1C(7hww=FklJ3X8P47&Y6N`*yhsmvpFF53<hD->Pe8YF^Ilkdhr_g7bpOMqK3>&1v@_y&i;D5||U~<ais9F5|'
    '>fph`+=J=2ldM1pD%%(}kTR+!X3j*1?SMZEH~>-fV9(eQHl^**M2#y&s5z-9sdpZUOgAu5ls`16wdx42%o#r5F#`U_NCq5tD?NSL'
    '24TW>#R~`!oUR&|qsIApyGywecqQ-dZ)%OJ=3htMtNx`hscz4_z=YAfH_jWK0nhch4YU$BLE&DY{K1@CabRrVd%e~MZ6GefZ%a>r'
    'wr3{n?PsQkR@Frl06=+A+oJ-kwn)GFQ8io@A3YN`GW(jA6e(IYzA`<X!M<Zli$4`?OXlE4w|#kfc{V!lH!fQn)i}Y7TCkT@aFkV0'
    'tEWr;dVSg3sBRXHJIZJt4S$I7=d$LIHO->kAiWn*erHf7uG=t+>g7etujJ9<{iNLnVx3_o0qwmU1n|1{3{x8Ln3W2hG&q#$88EaL'
    '4k{`kfV}=Vj(o`<TJsOoa)~W{Dn&RAV$2ooh~hn`?hqVL3HCdceq;@ebGfNftmD9M;osezH2+nl49(b7_BxGzE;k|_<5jy}h8f7P'
    't9jg@n%Kdu?%AsS)H3_oTWde{%zlnm>L-gCDeIHLjTAgra*J#E#q~_ein!P`!NoG@OJ!q8^40S(ZLK6DQ~E37WV*_)&&tYkG7;M('
    '_>)T}yY+9AOqBMyl1Xh@$)x1oMJ#tcm)#`kwk_pW>0WhPAOs)L6GDb9_8<L*UaD`@XNr2qMSGq8&(U~fyVLv;oa4<XD7vpS2Ir-C'
    '1f9>X)_>2l1JBLxzjxIhfU5o~{a=u7o!|dO|LVGX_B#Fdz44d)-uqXlzr9Z1%|*e&H?Lo5)h`~rAS^)ohpWNxb$X|KzxllnhOO2s'
    '?fT1?Ahi6K{QfUL!wCAHUyJYfRuRwXzY@>=1gF2B-}xsHIr^`)+sz;-+U$+N;B|U$@x<Ht10Z{8zkT{j{5E(QKNJn2H~4(|;k8E4'
    '9v2W_`}CD)@60!+MQ6=fzj5(eXAS0&E$F?`e<fajZrVjW=e*H=Esg^m*Kth0kmq(fjaS(DLgP5~yll3=A?|1+jpy|0s$=|Ous1Lu'
    '+|#WC-AHV{-WZ#fxd>mD7-h57xE_A~?&CaNgw`^+ydJi``xpl^(+`&z<lqt?Kz#2}4)G<%5~CbmU0-~7)lp{IJtEEcM$<QpC^6Kw'
    '$QK#U?IzObZdKDjqzhJ*dZ>HpYog{R*A-fluC~y#l=`I8Xls*3B-ds7hpsNuUgWw=SJ2gEnuc5#C3{^>)CuHzAcpIzf%vZUi~_T^'
    'V-&XKnk3xnYLZ|q*W_ZTt}Yj2)ivn1^!WFcbtM5$SCNE66`LT8>5&P7oLo~#O}ffL?o!s2i8$ItWg?PX8$=RaO%P?|T1<A(Rb-Nf'
    'QWs8oZB3976rAFrtVJpw=!sRu<1=Gj@%ZJnOKo0u{3U_OC+Tv~*fEs_kDYo;jt`EM%<;kLv>Y_z{aN7XAXyF`ap^30#PV0W%+OdT'
    '#kE0Hl)l8+SdL-iIf6M!tEr2J*ee4^zl=><GjP=&9fQuYMW<>c?a)ylMK<VU#qVQ(PPyK2-@lkFU?RQ9$a<4=o(gxz%v~!U58veM'
    'MDf7jCUb9P*NFCu@Z-M8-U2w5j8_I)>$?cB{BPHQS2n=Q$gXCJpw;!ty>h3u%ue@SuhV*Fr$?{X>27AHwfgJzik`389Ur`2$K)4V'
    ')bp@^z4neT?a9Q+)=cZKNX&=Xy}lwf9~Jfb8dyHg?zHS4LJwHSF|6mYH4hC32(@C&Xz|E#(5JUQ=s3B+RNRwQ^;I!qX~3Bru##I`'
    '%P+3y7w_g5<3`P|K|3nH3Zwn}I*0kiNBPCanFo1>8)P~KgWe5t8YRvY_0vKuB{J7bq{7KKYjg=8$n>c2u~3OI>3ngP7(ncHmL5S='
    'mM0#IZgM5$L?xY&EV?cuCnxIu6GY`qH&TkS3_|pTr9A)B`)eG1o4dwQNk3Bb(f?vubE7xt?(`b{oo2r)f~6SdoyViAxZcy2H#h&s'
    '!ZMl{RT1dy&h%eL*kr3!aNob?<C*sf!*yQ%ZcV<Iw8_)oIIsraOV(svp8MY4E%&>Lnyl02!gs%$kSVB$vUh$rF^^-{wB7K#33<_q'
    '2H~BZbJ<dVMT>ue!)6Fk^3JYgm5M!>Re^R(Rw1M7tWqSv%zhcAWCF$|&FPilep#u9H75the4&TxfuJ*zogoXv9r0$Wq^y$~OV)Fb'
    'saPmS8O`!tXFJzto!3c8NA!~|<|JyQJnPk-3Z3h<)&ChrL42<ylEE$YR%yl?$<LMW1tUl`QWhVUwL12{-LPCZ-p@>&srYV;`5&8n'
    'dF*>*12d^A&+E5-9ZPUT5=G-Z((U>AW)zp9bVHFmj^&K|Dc7aBV(cAZ7z1+ahKaJI6fDErP01c_w{2I*L|m$4Sxg2PfG?(yXei|&'
    'S7H=0kUk|oD~pShH(%fA(%C5sM=$+XSfC%03&epZ@Lqnhe2V4Q8M~(`u9D?RnsIL=9zYIG`>j@Y)c!d7@VVEbn3!GTr=KWKu;&s~'
    'f`V*=LYq)E9)<2~^r2_`!l1`k;VX98_<e*`k=X$JfwG+0;CoP4z@({0x#9S<6ikT}S{1h1IOBj)am_G$_rzk!!)E65W%OIbM&QhZ'
    '2YwLPNv#E7z2P|C_`fXQvnCsOz<Bo?Z&UR)`C?*PPF_F{UWX4B%Z@xSAFYk-6`wI33jdQ+$Hk0f+cSEafO8D8DQMw~IkT$tXEx{<'
    'MOZ!ll|!NtdlrA5L<BZ%yKo$sj?(5dYQfHhm}Cm7OC3Z#Fnq;P;V!SvTBGLG@44*L4w@d$49~*;HD_9u6Idl1aaPAr@??kO2R4vR'
    'Dbdx~3@mk2Oc{QcQ3_+uDH@$#_Xk(~tQtIeGHf#zTcfxhziN7yH{+S@vH+DlbK6O7W%F6CEXD1(?hcJDqZYTmgJX&lNqUH#tJB|D'
    'kdJ@L*fgy%A`(TEICq%%6p>8fWSAX^rnAg!w2@L?eTHt){Js`!yCfCni!ck{FF9x2nPqzAG`(84N_?4e93cs-U||KrSn`<9XcMF!'
    'p;H@f??V4DE{iD<odzH*$XRsTlZ|0x@Eg_Nl-TMtN(_y<RWJ0@%sP=k8tYw}E=<<nAmyUhA6=aPKDuml0locEgPrct=a?gket8;U'
    '!SCxEn6nm71oePbr2%GI#qFt;3pAq8YJx$96bqN-?G{o(rZ|$t1S$p_K-|01b<}6(s`CNBLi4|hWup(KJ8`Tt%X@waVmV3V_Vk{='
    '9XEyOU|oLW)E}gIL|iH%<`exi>xyXKU$_+RN(fynA9<8goqugEY-a+xFHalHzn*!6@q;y4IM$>&6?y!;xorhQ@1t+dL_L=5o0|pB'
    'F}dt!YHS~yj_H0;hK54oRSc!)dt)o$sx@@;(zpJ{0(6ULkQC_~hSzh#Fdk^4AMLJDx_x@UM3)<vpt*jqoVn!(BbK`QlWB+Np5L+E'
    'FMVtLxUq@44k8*=0UYcFSDn=o8BjaG){Sv!qnImdDWhZw&=qj<=!8Hu#l_slHfg!48lR@XH5g_;(EkhW0SnY!IF7&^5rP#!U05|h'
    'dBcSTJ$1vrH4WrCEa`5%=DNiuNi`naFTZ3912t)!W7EaF#XQa9AoS)d0Ia`Lr;{ML2%7YL`;I6@(9W41pm7DyirUiM?<Truq)PhR'
    '@^jgXft>@5f_kM`*Mb#5?#Cc;3p6hjAi7hOi0#x{U{pL+jx5>bLEI%CoM+aU8#L9u!i>sM)g?MOOyHbFm0blpM=_)`-+byt3G`Ng'
    'bsWP&P6e2alhV`Cvhh=f#ALas^S}18)T-*b#2M3(T9+IvnS54Syqd%TC{`hzc=z5ayriB0g@R=lqf!Agqd0S`0NvF99n7t<eQ#4p'
    '!;K=jcZELp6z+Xy-J1(1<frROlaRK3Z$VSwp_c{BSD3_smKC-q>T$wlWacVMhSzj)I-Jz2Gp*WTt~wfsx!iDdqS5b<+GluafW~w@'
    'x}gyW{78A+>Y2NPD#lMm^N^;TVT{ck)enm56YteOlwG?VGIJ36H5;`OmyJ{;aUW3%St}6Zak9@-b1{7go2EEZ*WP8ln(Pv`GQWmQ'
    '(QsLqHH9%~w@g`3^>;<&M8<?4-e($YRDRFqh>FAp1)gPERok5}LUw~9Dk??;T}zl5YuvZyjyWdopn+3%q7nmdI+i<$q^Dk^(;5yj'
    'UtFhCG02Hv1@IEDZeq4u_H0ZRJJo)wysL`Qzi5t{oyO^JOUtE8@v{j#J~Rq}Pz5&FPiYt_O9R&%r7HY_BDRHnmG3RM0XU&~36WFL'
    'KJjd5PVtN;-QsL!?lu>}3)<R(4Y4BBa*DU*GjUxPpd(KJTBrD3F@WDSJ~NZvhFl`<90u4EKl8YHSgYuG-kn-2$Oz4RQ@zcGTwfA0'
    '4-uUUb9YIY6rehWNVo<y0x)^%dHw{Y+gObdS{*5MFGCSXpESE#i8}QXb#~*qUCbAtTyFGR7w9B6Xbnea?LqIfJFFP|5Au+^>Kgx0'
    'KGfhqYxMHqG&^SmMi390U7FL4#Lt@gv#$Q!-PBSq$2?tD;YAfl&6XR0hS0w6TGqsxsG2&nA${n4QtBFSL2i_7iC9W`1!`JDBHL5E'
    '0W?K71hvi9uMf@>e&Llc=N$;XMx)s_rVG=bu*?~EEQ49!oY>yBaph8QR=Q9^cMvSHqA@-_Sgv7*Q9`r_3s@2*I<wtJXfQc3OoRSl'
    '@QeU6s@Va#S!0CdIWRH{dH}h>TOdhnM-zr#&>}wt%u44AplLK{d~A(czYkm8L7U?5UbIgc9{%wUgPJ`8f#dk{8-8r{@xN+Qa(aPw'
    ';%*W?ZpxMu{AXs(V2|JkiAO6{r86v^K=Jq!&BO%Cj6czod+o@B61+D-tNFL9OVVhNf+P)|1qB{{XkB6okMqWLXSgb9m)l@`%BA)}'
    'L~Qp9jBS4tg)^q%63&N>iz;UvxAN6Vq6!=FPd^#O;A+L-YGuK3Iw*jsP<siWjm~u|0{Iv1QnELiiOr!Ugk?IDC51>1jNt>DxpF4N'
    'NrD|Nw~&W}_0C}3Rkz^~o7#cMd+b_I#=VUhEN$25H!e?PSXg1o!d>&Q(!`_gG3ND??Ks90%HhD|jL?IxX7FI3xZrQAyRIzlWRcFv'
    '65wiu;A*A8rD!LIbjkx&Xs3V;Xjv0(&lDXEy;T^~pMb-xkwVr;9c!nI<)|V;{)UEQ6!IJK&wpz8jZ)!VKJ~?Phc}abltSgT?^=t{'
    'Hywh#fi=eXm!Lk?=TvIOqVpSXL(cww3eu%F>4D$Ik{Rb@#%uvS_%JMBT`Zq4%3~ADrNH^flRoapGLw$?=5D`~qZ!RF9tI)AxaxL3'
    'b52U=0Ja;Nw!<n1ESx?T3vN6y{V&FKds{&H^nkw0MgYKY+?WDp=gwKcrzz;#z@<4Ld~b*8J51lT-D&jI$HyW8Oj*F=9fBMgns@x2'
    '9`x^9n4~~pD@GFh0JMQb1e@5R?9DSPh>=F!Af7<iMpX|JZ>2r(s1;rvn?5MQvU`@&9uzwGcQ>>B9k#7!H^wwynT;owHP2|eThtVm'
    'q?XZk4;ogC{mi!G2h$&Wrjyb9pn^H0k8-=tXnI_!RV%e@Y|lW0$XKV{N^P%FJIrkA;4{U{ZjHmdZW(#=U7&7^#5vWN&z%<y!{8Pg'
    '<*Zs9VM2`)@izxZzksn|+BoUN`sSS+@8O0-`^}3eB@!k7fL#VGgpz--{tWJ@$!@nn>VZw>%`JC3<_I)!+@BU`DKEy%495@nlQReS'
    '@P#sxxFEb$@EI5UKg-Ayr8-x0u7lc$*WU5S?k&qP9Q%u9c&-JA!maIwY<0Hrf<I&lo;ZV;cmkg5g={<poSfwZLB<lZjf4t{Nl`X1'
    'SqNIvaA<HQ)eh*dUw%o-ytsH!v3W7-b%w)H`wUx3svrU5B#7YHp9~=VEkMR5zQ{S@+Pw#*dU8X3{KBf^X`Da9A^@^Z2#CXIKZe-n'
    '26yQf2p`HB(D8``CO+SBC@&P!$6Tb8VF}O?p2$a|CZ2%-&jG(i$MmNb^y1%}V_rynafc3$sc*hij1VO&J3wGh?D)VFV+W27v2F&j'
    'd2>95PB6h2tmu5<&mD^;T4zHd)CV)<|7=$W+nF1fkv^h=@R{7awsy0opG_bDyb}{P<eS@@+JO*w6g@_~fT_MS&<F=u1GMZI0jvX#'
    '+&5=7X1$SG&{BXRGk!5$+FFDR7jzXw2=P43a4NPUqVj|lA<AV)4v438_A1L@!XZ63DT@xCbX&A61ZF$qGDxtb>-OmML!*Cs)#z0C'
    'g`RXQRpJKpxmKZnH!E4NF5736;jNM?iITrn^qprx>|kKF7-mL^ZU|Wr<&osiS4aifpjxe70+f(MD*3oB9$b9gR?!h(?VZ8H{}|+-'
    'OH{aRkntLbQOdZA_Cd^_W<AS^r7<Iw$Da9ylx)f|;baMLFIsHt8s-#sY7j=sxFAm?;O|UVi8afhI6ZNc9N%}Ntfe3>OJF7DU7Ez|'
    '@5D*ZXzRKy@h(OSCn|f7l9Wl%h?5Hy0@?0P`=b#FBQ{BI?AQ>e52ZI-8-cBgoPQJAcO$gjcLqy-TFA;w!JPi==i0x?;@in$?;U74'
    'b8$O`(y8#-i-auWH+F!5=qOI7(DPE3;>H%sjJzXk6v(ic!2#43o&ni(Dx`^+OrT>DY6&{iU_BBXR>e^^y~$Mbt!Jmay2{d)6vlG4'
    'R3WH->#UMlGGa+Xm!tl)Y{kjyE0_66owJ!LXM-B2xD+JC|4pb<Mq{*Pm$vx=uf=NzX>d38ZAGIVf?|gtD+Ym!(uHp-Z;qrbvHwoQ'
    'SqVTxo0Hao*+1u=55y08e*k*EJ3%dwpQem})8pRfeI${Bx~(niwb?4EEnAmmLSvA#8`f5BSWh$*G*Q%Umo#sAw-mM56D<TG7d1Fc'
    '3=OEbsL4^f2`BuM)WRRUGw!^}%MJxwkj*ltGxI=3Cr$aq1+F+IVQM=G0J9rY3fC9o-hM`h0c&icX25N^l#dp9Wq{5FRQsKPvA=Tw'
    'BSlHi*Z`dz$KGxA&s%3C&jAsFL{|k4aJX{>^^mu2+*`b2^ZHz^2*{5HcZGHwCj8;Z0(Q3V2v#028&@PfN|xmXO!dy5F1$sMMd1g9'
    'YgVN+&MQ*zvJ_R1nv^A}-Q_#ki<@x1T-0JeiGyb6x^-em2dG$aN+E9m;kkUp3m_lpAV&mVxSP`3$&g1C5f~rWVlK$5c-LibyZold'
    'ngubGQL)Xm6LVpt?RP>pDI%)s?UIXEtKAk1=xVs?VCqW`M&Yv6O6?#y7&TM%J368amZ-W2cFd3WD;S1qFCVtSl3f=;-OoOVlKis<'
    '(&!M5SQi-9r8V<7!{W%?HU@%8MGCQG&U_>3!eq5)YPHaYA5Cb(`B*GN<eb3BS7k<5DP31g77dr9%hu)9sMqL7?NvF1K4&j{AzX1T'
    'mg8Y%z#XNjGPzQRq&94^2%wA5b}+8p-1lblkmVF7vohBzWYnjRki#-Z$a|d-T1o_3_WW4-_;{}u-b)ETS}`k$>!Wvg^GgRf6H3^%'
    '!*x5-uIL((Z}J__H{EGuE)u}LU<6mZf-p>38#AEAR(!9VxkyL<Tb=WDy5cN<&f|@0t^7eRdI9!aEo^cS_p)EX%rLu~D;?agcOoyv'
    '!9jWQE%ZZ20S45l{*beUOwy|D|C<5m835T`u+5h3GRKZP-?r{y4+jt46Pj4?oO?7~IOt4O7hU0mtLjg<bE;`%*F7@c=A39N4CH8u'
    'fgF`OR#zAVP-Xd1D3#Ybj3QB@Xk@F2BC)R@$xs&yd!js=76f```8Hl8vuZo7-+Qs60$#jY&vp=2NX4{Wraud{vw0yjP1_aV(4%2)'
    '2ElgZ;sxTJ36QqDxz>>>fF8_oNKW$O2R!z;heDC>$!21c`3n#$p~ucnpWW;m3>=JZHnS$SNuKy36rJ@Ld4Z76zdHqqRltKGF9NYQ'
    '*^07vNZZC$^RF>}P{9VIpd%I@!~h=cqG>;iEVI!c8jDzgpM**pcEWC0L`uo}8q$$yU3Obt9AO+b#m(<!>{vZ7piqt)X9Df?Gu<Aw'
    'Sdl%2;y$l@5J+!qas*HN5vh(Q+`GwE?1cPdH5~xZH=h)WGZStSQA(M&s60i!PS2{>6NVPd^K|<4eHr)96<-{XRu>~Cnn#{P<~eMA'
    '_87WnKU)reXoWARI*n$lGy2r-f{Zch^{*~_L*hdfqu2f&O3vGz4xA*MV3>M&&u+r;`3r1pz8C4%+}Jhd&#<9<GG{TxBZN(Ad^|Qb'
    '_OUGVLet@PFN~IiG#BCp=&6NIZySz1b$`FQzsL6}=U3e!=EuPog*a;vyXvU=>_>xXHU_PP!H!0=!|p7YJkFezOmr9{w)FA%#F%)r'
    'li~MRxkuy68;8Z9=kWLh{>o(t{A7m@=bjtJ`#2YkQ7xK4^y@kPb2t988vn@$5`T!1p`2F0Q}`=)_Vz4)O;4|SpW!>kUebh&A#R$Y'
    'p^f0knApBW%82X>$T<UF#7xE^2b7B77{AJ)6eLg^(cd5$ZW{kb4ns*t=hDK#o{ayD%eIVKhEuf^CN29(P!_uq@WqzPdjTL~5asx8'
    'iO@qjh9v?8EflPGEVQ|`?;DS%?VwxnM#k$tjkusN_u2v5%*~V*5XA|lSDc*AdK9}$w6vb*o&3fifMm7&K&FWNrXO03vsORd7BQ9I'
    '@~q$Zly2AZp;3OrRv*|5Zz(uWd)T@J<*DCpHm|x&iyGn`J&IT44`_Zt%a<#>Q<<F$1S<4D3?jS#*<$Y482Byn`KXf+#UvZ%xGp@F'
    'kWY;tP<A1y1z6dXGGPi>jL*eyAjy{rVfrAfwaC}iBfiWk3hC_54z~c<)}0;7uB`zvTz>IDevRnzvNQF~iH#16f`zh?uB_11i%fPA'
    'DXwUmi%D5h93@p#%oi7qnZn+&g9HvSJT%zKRk$ZuNN*<Z7WAe;<bOc-LJ%+~bI(rs_){ri3>U?x$NngIisfdDTdNySaIP5WAkUpZ'
    'Uk{_oMq3f9>SmQ~J(B&MVRf5Z#SnjG!PS!Yo4xCPuM^#wkT(O}_A-B2<{29;Wz!2oZ?;8mba7evCXn5=Xw7zLOeg7g9q6~qVX1z&'
    '+)O>QOgHjueWfMpd?Vc}j5vKOTfzjAfN)f33ONHM40+kam;f`5NL<+ZVY~Pa>=bSv6|K}aLLml%n45m&aiSks#O=A=2`P`Is;K6o'
    'L~5tIF%r(&hPMbEp)VFfs;`7w3Bc~MxA|)Gy>Dw?WH~HL;2KV?Rackd=w&<C?-*_W%WkeEhM?oCSz}m^2QM)Qv9!fQNY~6UH6b@A'
    'A%cky?BD|S=sD=AsLDC?c*ek}DojK%{$szfUq5U{o4yeQpy)9R48FkNtb#+q7Xrw*Nmeo}l+Z}%v3)$1pF9vo@VJCc8nfyDv9QUH'
    ')+7(@JB;;0?Y9#qhxj2xDW{+89TW?Wg$_VpmtDdLcJUf&s_GX}`|>N+1u%q3ratf%Us1kaE!0cxHkP-gCn)%`<|QFd^Q*`WdZXie'
    'Pk6Bj!cld5yLP;pFt^qCiq)%H%MyX7;PvyHUE{5>Tc>4;S3XgIDkE$2lTm%Ho}Zs@8vigdH6G(HKr8i>cN$j*NZ^4p%-l9Q7QV)R'
    'eqTQ}Jm%pYy+jg3&t+`%wfs4fJAk$=e}`F6?mW~mLEt8fZHNv_9tfz>b6OOCGzQ7Kz|irZ2t!OyVhg=(VEj|V3;{p2BY}t053SSR'
    '(1C@?2{2ng7qJRf@i^Y|Oo5TYupm>Kqvwf`9#Z5|D@Mja7BUXjjf`05;9iVVD-7f}Oq@jCajAq0vP=PSJrZIiLDims=xT=C-aRqA'
    '`&fAsT1eI|suiN8mPsVF@>HT~@EK^~uFOJ-mPL4!&XZF(E<c5%%qbi#HHE^3MW!4-JIC{E?t4=V2)hMpH1W1O>%qoFTKJSTkW0tn'
    'gpBy&W$&s#Y;=e3s8Q{Zu3H?~D|1v(`4V%20hBPPZzPv*MBk3lZT&tpIv)*pF|&L)0~mM0anj=xdI$OR0K_w1kjXY=6e$2n$qpB@'
    'JBx0FjE{SQzwx0-J5g}CBu}cb#oDcYzr~8oH;Kj49f)$C&di6D=o5<Bq)-C7x>v##56$UDDu3u^^5G?i^EdexfnX+c3Mo&a`K>&L'
    '2NQ}Uwvyztu5cISGuSqox<^ThE-RGZV0%el<+3iv^_4H*BR4wnieTB>`pB(c^6>r}RM|f<{>Fv9zm@aw{@a>#q`P97?rterj)hUz'
    '#GBRyQ!k9ZniFB2!s=nLL6r9}dNLRI<glFaFfh;|kBi45Ewcc76^t~aq@uv&#D=Q5mkH5YGTb`uEQ~6y8F%}>=LK|C%tCY5vZBSt'
    'lfu?`{lhf3PdFnn8+_p~!jR4*E)IWN48v8>@U=|1_~j<knohrIKDFC5E$QwmGhoWiiW7*n7ikK)I@6k_y0^+y*`q;vGq~b>)sUZS'
    'Te$sIX2YLzf6H`~JU(ljj}-44qYnyKl>}46?B)qiER6@2G$a|;Pt#rxFP!=Bit0&)2eI@>>gs$0q>3%zUMVuoy;uBJJRGWc(57#V'
    'av;*Lk%)gDtZ4{GrG}tM5Kkp*8pLtALFn_?uIs$3s)JAjQeEe~XkFdc^1DwjKu?J+lOuQI(*_F05`a#zMK?1$Qj`~7pSgUjXD;=O'
    '{T&f6+uO1XUc=X|yG6UZ%nngfvnJXnusV%?=eEkE$5gU`BtdEkDb;FuN>T%RuM%H7BhiQ^$CsSs^oN{Wj;RQs2~enMzp$K-1$j8*'
    'nPLA>Uo^eRPs&*oGgOnO>rSMh%o!4^BaMp9cj&?YZT!Sai$+Gdx->d7Q#|q$s^qK*CZgrmV5yb};`KIIusqZnYGOZQe>5O)bHWW>'
    'p@~5paYX3pgC-SYws1llFNyJ`yzsnOhe8Ac!E6-P*rwdpnMrI1z1C^FHIVm+)UsZp>FBCIYF%6;Az07zyvD8Hd&w4#^=LVHZ91)w'
    'txmF)c}FjYy0j#jO&iU2r#<{U>Rw+a0RW@OZTg|rIUC^xK(gW7p5(RbwfcjrZUehbVb^r=u~Qyy8(kc3djO*E8Aq?`mm0%SuY=f}'
    '0#J@pX);r3AC$V8V}U^=29TrECa<h8wK76tDJ#|6t3T3%L9dm7oNKekgP>}^*hyuSmSkSgw%1czeoZXtyy>~*v6%~F)V%6m50qV#'
    'qt(V-h?Fx*gA{{>em6_0mYL(Z8jiY+%T|R=;cAFpcyhD@&jn5swvl77upFktoLV=e29=y`*XUkcgW9s0+IqG#L)RgJs|NeMF;i1#'
    'u}&`7`}Oy^^SEer&szO-<MvrW!}eLS(aZ`v-q?(NKr@J`HN<qj4GdeO15w12sJ)IaLE{VN3!U5c0#+{B^xn4tS;2#y%R$fkZNS#x'
    'L%X+GF6jut_U*en&!qz-4>-Fj<UZkv;Q<|)C~fAoAGZ4Nf1i7)x!FukE8sUUtM2D~xs5*&LswE##n}On$`((i?kN4P@t@djmo5pe'
    '?)wQ4M7YMg5+Yz(DLz+J)Z`VD&7#QV3zLGOZBT0^!5H*QHCAjAF^~SoKe98x7o=AHHW*5x<oKjuX^DE?ljS$YV~#j-uEMK{lSDnx'
    '-YnDkt2s+ljLo^3LM?iqNT!|-Kq;X%NgEgWw%O68sc>)m3<eWfr9tvho!gI$0MG1T?wBtd-;@rA9$d3jj%)5IVYb4qYU!@lkl`oQ'
    'Q9k(kdJ+iHVM+eN&FSw5wEA4D!aro=I=#B;pN$%4XURmYN)|uO1Ba{ru-|A8HG+1z=D)QlB{jRUXF-Kh7rLNc1Q_Ji8-EE5mV+3>'
    '#)5h$UXe}j@o|gbM*#*QqSr6XsR5Mmxkc%44RRZ{-Fwdn2#>*=qV#0tGOYixPWnjYX?lIaAn1({<fgktXyJ%~D4=?O)a$pe`XH>w'
    'PklA@>$>_iE#cKl5Z*FWn#i@J$+z@X&0xPaUaiGF=REW*Ma}Q~-<olhp^w^<^iluQ&_^B<5a(Z{4ZJrR?apPZJ4~dxWJfZy_v#Ps'
    'hy?%na?iSCpY_N;{6W=<hXu>yZqMuxG=1qRO9%ndYc4c%`HSFm;aiiz%k0i`inDSi#9F-3&d%%3vuLxKBrfT(EWPsS9w^D<spAES'
    'eilbYXa--}QD<edLGpx<$!w5Q%!L`;FqpU781e)-R=VS~5xB(Ikj$6NZvTUln$n~LTl;2NvtT@pBof@T%@WQjRYac2gl}<PRfFaE'
    '$w^t6GY~o9X2%S|kGAz>O@v)nZ#b3=zfz~l-R2pH>%RBWaP8Td1++~mO{KnaGQt<;cSm>7Q~yO|$%H=#o;y{l%=XO79(4QBa~7D1'
    '#)ZMa4w}+Oa=>U_TvlK~fye~;A$v|F7M|kVX&k}D{j)Zw61%ge$tsmEO&4~yzd?MU*T=WCqsvAYI9-3#NX%BHP{mV*02A^!)v5^%'
    'uICeU01e`>)8x$#TuJw47rxMwhK-<hU?AI5u0B#Kd;8<4^>H+8cUps1R^kmb&|^;lWradH;^6osHr+o)-|O{S{N0ki*N&2)C?DtV'
    'P`0;sqAB@I4ypBItB&PP!v`qamHTf!M&CsXA{q%7apQ{Izx?B~VBX?JfFUno^-s9<vK+za$Q+w~J|TGwJu*G2B2ao5grVFaWf?1V'
    '18ILOHH;Wzm1y<WHip*nW3W~n!`JBDdqUQflDH-gi|hd*DLH&V`1c(fQG#HTA3i58v2=kj-gCGKgFFUeNQ@g!p%6t*>KlDp6^tZ5'
    'd?t$kk9w3k6czeUPOj{X=<Uov+4}XpnzSqJ6SXc2*T6RDx^STkA&C*W*Cp_iOxgWiMTWm#eI9jNpEf$9=JjxR)!odxrNM)2(ApRX'
    '|KY?fOjeYJt(x}IB@*~W|NU3$zhw7ky~f$-x|i9z0-j$S^AoaSY%S9X$m`wJx>=@|PV0PF&<iR8t4*PguF}guFA2O+L<3neuA<|;'
    'mvlUK7^uRN3Nn_wFqgaS@;nEix&44y&@V9FOQ&%$8hjp*nswIteRR>1XP*sMCEIgQj<5Tz1l_7ANuh@AbX3bFqJUZUC@$Vc>0zJ<'
    '%jpS4WV#(w1lT3Enk4n}(F`#Q5=htNI*?~7;NArp0CUwB<Fr{HUCk|*_o)Ywr6DT9Y&P!IU#V+zJ?Sh(k?4V3cF|M<=vyvDS=rRq'
    ')k7$U)m{+rP0J{x%Y*cuWWt=%TAR*C(;rozkE+$ZB@{Om;ops1zmYVGET!2?E?cQGF`8j3%7&U_zAD3w@^?0A9q5lG+#hXkg*}wR'
    '>YGKZz7z!%OsDjU=M0p>kiOEnltLuPZSj6@gI1zv^XawKv0PHovHMH1H)<EU?Luud-m=#NB-&#2jY5DLGQdF#UzY%F9?|)~3bcZ?'
    'O>^o5yF}XM_xzwy>6s=X{Li<SS6J)>Lr3FX2WO5*NTYTw+<SUOPbrlqIJ-<x@!U0}Q<mSCU|>t}`CMjo)@oi~#K!erzddY?KDGzf'
    'jZXW&T79IRh)vLF1fO6Em?BYTI=>a4&I~UjX6hS#r04ba-!1=S?F_R#uS|sK%;Y0bCfogXL|kV(NCYr7jqu6aLWme{V>)##7MK7k'
    'vis<F>Qnu#Uyb%h`Vak%(@rOES5n5YRCeMF>y?_PI1^mjyC=m4BYhq?VZspl4Nk@yFXoJ9@ukg4`Z2o*Op9L16+@){GyDa{IHBaP'
    'EHXb26G1V^a0c6NN*+8^TgkvK!m)76u@NlhbI0b<GFglk?08~7+IUwiVyp0%>CETh-nN_xcbnFS5!DQhg>Gn1*v&5aobekp>E>)e'
    '%JZ#0(&)OoB2`+`*PCxvcmGIS3daVxnR?(Ny<W2{3|!nuROl_j(+6w(rOm|=aSfTiBrdu4{#eOFmf^Z%-G`@m$>LJw4ZSBr-aue$'
    '7Yw8QSau93qpdoQR^d2W-!hIkOl$_qxM>sJfi$JmGOJL3Kbo{-5@#fqn7Pav9#+ZXiLx=Y;Jpi7cH&uQ!A9}Jmt`*En^(VQRA>HG'
    'XO{Q;LOr0VHRbt&uC6Z2ctoDAEc=npGkOLH?n*T?9wD^P&RX43w=q<0M+Aa1_7A;W2&wlLGxIsW3Ht7*o0;L4+?N)^-;ymR)_q=!'
    'v(|a~`AI=9gPx|JU|!JEpr`H2vL*%ZTv}&E?xO$ND_&oI$?L1Fd407-udlZ1N;noB594RVDhy1wkd4XT7C~rD<f8{q%y?1M1<9-*'
    '?+$4>a$CeZBe@!xP2^3OT#KAWsh*;h$Z5p3V8$x6*1HN>+X>EU?J8t$i$sIsO_69&ZcC&ZmDv!fMrF1GYm^t5U0hbly3Ua?v7FG1'
    'Fpj#Qt0XDVJ%7cURrrdxFC~4P#DiJ&P+rkY_d~9+UVj5X)5P9udOH&@m*1CU-Z3QG)K9+shNA5FYAcLyH*b8j-cYGAc{JTI=pdd?'
    'dLc6^Z4|!|t`yj%wB>Nx#pR3yb8Wrt;1XZsGDFSAW)T@BCMC6vCYIl6Nx0d-lnud}0oiWVR=hhe>EHW9mVd9F@CL%)uI-YIfi%nw'
    'ZbfVK`=j<5_f)Mgbf<~$TOUd&!@*FL3&(0sMFc1S$DMPkn)(?|%k^A4bUv|?Erb}LVn|h$DYV1fQ1Iw#ZarD)QaCZ0d9tl_vCB!a'
    'Rod?atyOR7`TBd^FcUs%eB^nL(|2}^5B7vb?3?@6qwOsMJfZ*B{{+PR92fzM;-F+snk=HnEUc&PqVpg~1%zN5gwq}p?;H6FpezXX'
    'sF^`YT)FYU7usiFI#{>cwks@e$=BK?+)Z=dVK3(v%gfoYphxr$?OTDj@W)mV#q-cli%%uEQTH@##@pL+52RnA_hzHhQM%8fk&O2E'
    '-v2g1ELm)oTxkgoGKir0BEl>pkWu?od04DA;LcgaO%xQZh7y`mnGkNdC{Zv{CcK;Uf;}TPO5p>8)uOlLgf2s3NVy&NTlk8;)ccWq'
    'PmZ)DRk18}ulkpbPJ%S`_q|IGCh6!@c*&Hq(&t=oXgt&+V{*2sS4Sf_<NVkx1vG(^X75fjrYfApmy*1+WT8GFf3w!B<5#{R&b<lO'
    's{kb)8L^CA93z`cs0yXTxIE}zOR$@LIVLDRX2tUp>VzmrU&7&wDT)OfEz5Xv;_NZlr{-e%5H?Nmd}MXdQs_D<yB3o_F>1%0-lV&s'
    'A_uHPa@PsEHIQ_-WKnn3Ct{Jdh_YerHlI;Tq4SoMHvle127^Wy_s_8Kr52-N{KSW~y12kP&yW^${Agu~iYW#ZwOCTqhyDvLP3w7X'
    'VeF8x)#LHJo2I|9EdHgafuOu$qz?+-mMeHl!aZFXk*;&^$!*x1p>&kCjfB>h7r~EUBWonrm3w=Pp(qRauN*k8@D*fH;JtOMT(w-l'
    '7BY>Marj3+lXFl6+d+do{7Jkg<&Ip2X-_l8o9$O$B3++i_gO(dRW1e7tX$qB>?`jCqp8H2YjBh@jigMBTAzr*=y<E$w#NdXYN3p*'
    'ZCkZ$IWD#dyq8l>N**U$wUe}|Dz@a60R8Lx0_#|*esy&UI{t;NO3}^P5zp3B?0gpUF)vGmV;#SjdzKf4mH)-4qUgnb{JIo&GBEU&'
    'Cv)DA4Cp@rRo&P;Okpyb+GZ-okRAKPebtk@#==;F@`JL0A;m&e4AW;>W~(Pf36*<|{_rz}70u3|ER9>qot(SaS$s+i%~sb|VxzLX'
    'i~hq`Mt4uo5-P*Q-+DYAMQXGX)v><Q#D%kDWt_0s57>7xdJ6ZL*aI|>8-j4FcF_(#nvOjgdiYkl?b1Mr$O2Af8k2P~eX&THTG$0a'
    'OABL4GKq)<iBv@*H7-^OpZbWWfDB70{-G#b;bwLWFNK}uM{|uIG3DK8>8}{+k1`&7Mdnq$2R&!9lxHn8ajhr($bPexe)7%vobLMg'
    'l;21pB@rTz2$}KlIzD~=A`UEdyGNtca~<1_#j=bo&IfH|9a|X=#PP&bJ8CJ_KkieEe@m9HzvdrdCFU&+d$oB>h<nv}|Dv0Bl)}Xe'
    'AIJ*t8NSDybRT>VbYEiwPX_DR#1uP*NzR@aRthxMF{a#v2A<2Zh;7DBx>4^@_Zd`|adSl$1#G5R6#}sq;)1(Snp5|QBHBh{<!DZl'
    'Ja=UcLVSxXc7NdD?S>h^jzaI*$=^)M_l~m<wvAICQ+x2cjIr&H7mn%60Pip<A;NjIJqM5+u#`sxZ%zR%DG9Slfl5t8>=uO&jy!2Y'
    'K+Coa@e>T5{AzucWS-yE*l_xpZs@$6;IU)7*e3;ZU}=*Bn3nB0Y&zSDQV9GB6%Lke-f_IA#T<V}Pd$1885ObLHtVFK(+u?Pl8nFn'
    'n&vMhdxlkp67pIs*Xy@*gKm}iz0iL?P(t%qaphX1l7C*>4h6ov-{AC}XWdYZ!9SGpo?nAuImZWinI}VqUc?BctS51?Yiu_8EMfnb'
    'Su2JqVtXwx924YH#{(u|xx`;ZnqroR5q2(rX#q_rpCeKpaM>u^I+-PRkQvyR4gJM6XCTxtcl5xxV{8BcQc7c+xC#cH-8LF3Pr{_b'
    'K7vU;)v(3B4lu4D1@|R31;Y<*7HHTAUfeMp5HN+niG!k3p7$pkc020MJM0<24%(+#kaRIh%nHUh5VsDa5DDVE<qAk?HiIeH0!mqD'
    'vPS}pp&{=!{lKtbIbOE)Og-Dc#5d-qMto%UU&@GrO)Z~nFL8r}K&f&k>8hQcv`~pbX*J7Uy+<;cIJDmD#j+By_!JAoA8Bh(?KbTj'
    'v~1YBRYKntxoy;z^{|O&Q(t~$1+%Gr>ul=U*~Ah3_~0pMSrpL^1104~I*eMCiFa5eFeO7DmJBedo5OQGD>R`XXi&Fz>uEawHIa)@'
    'Z+29-Tg#mkY)Gh)*pm~sMV8-`#T)Mbigr`VET6Kj(#4B8<$N`Iov{ct(r-y~xX!j;<{p8+3Wo^~J&kCT!}IW{)w4VYN|r$`#=P~6'
    'd;1yF(Q-}=XXX_1em;R<#dQ>N7J`wmr0(DTm}-@q@7G|?nM^EYsMRuV?M6%n35{7w`Q1CXZobOyMZ(G5yu3oj-d&cumR*uRzFQR7'
    'G6zSVTC>#Ywsgqj5@+<+@|*Bi;imk@cRSe7=#v=`e2Kl1I1v-4;lK9D0Q>Tk>ld-1BUVDTjWdtZ$eZ+f-C}RQ@fP--nxCG};|(Pj'
    'N9_af1~u;%wu9O25pu%vVgwI7Ao`PM?APk^XM9r*<HT>xi=cuk1HuE{XpG-38^7br^2>JD*Z}nl|BF8xzi&onFP4j%%spchG^ppf'
    '7topGSjL0tJX!$)q&(PIzzsB@W%Vr_DbrA(rRUmXn3SSBk$nvgG&G!%eP=t#{1Up)s-C-9PbnpnW2qa@Z}6K_1$3m52q##PA>$no'
    'O!%NK8Z4^!gjlqFMn!WI?Hx&Qcm(hTsQ|q^TBai`a3Dok6V?l<ih%m&#qPGo-AzQ_&J?`UvA1)pemCVwZL_Ouvs>&Knu^_CT~hDj'
    'wo=c<4D55*DK-#z!~<*=S>S%*M4KBoG%XBlJ19#6yC+6Ki?+d2br_W0VsqQLG||8*1VFS!n|M4KcQ3$Q(9)6wCi>w)3E(dt0}lQY'
    'z+Lmvp3?5zP9u1w$n^zR1)8MGtB0{K=u30>l?Xgvv;j&q_%m;VvUZ1MwE7iNBNW^}p&})l7<m{P^b%#e4Y;Bk2!f_9V*Ev-Yx=Ui'
    'G%sKAeox`<%9v=Y{_nE2Buo@;tM9*|>YHmfef=}fm6)Iun*P_NsDCv^y%IxRhQpUry-TQn{O7K?`AcbZDV^`Xv+*w%Xfoa1HyP%#'
    'yID4ai9YUSO1WB45U)oO)T%J^TfCr@WJ`N~E}KkF@`G3{5gGXyuj13pUfAABFBmu1mf1|7<nOp*Z0#yFQtADuN`>&dSt`B&U^y$o'
    'K*^UgE4^wddsi$8a<6df{C(07ey7xf{Mo^yb!LU8?O-y`M@ug2T2E5(m4AvpwGQ3y#!Qh{61*`gDe-E&%t2D-5D~AH1n=>D;VY7S'
    'RPa#{$W_0#R7kE-481T7fmHWf>`P1JE%<kSf|c_V#InSmwqIICOtbW8ZLmm>Td<9ODm-V_mDphU@vU)qtL7C@P72{-{YDe)SJ&8O'
    '3<aCfh9wsk{hN)XwD4X{o?iIevqVtbWuGQ15n*FSKrvkl0_iGC@WF)n`qmIu`N}0g8yU{(uQ9FkDVi1Kyyvl72=;B6X_lUZKL5jd'
    'qNSIK>sz#nUo&0^XqHeG-`N`x<%vj*JrPleIOml}fh=rOI0pS2sbqTY5<dM3tD$2IF>yvb2mSkPpNahyoY~u%*p<D|m*QC26@%|@'
    '+3j9c3o_P3ZU?whdN|QOwJFA<0u!I9h)JmLNR(>78e-m2%oZ&;#VQj~rc&iE$<;{!kUC2EqN){>d@nOjQkD|M!IgL+w2U$)4>IvG'
    'hd`vMGnE%ipHo~CRM#a#<_W`;Usa*E6v{IWDBW46WQvbgxOOXr8T(^h3A0~CS6x?tsj`8kignx4`mO3vp)TnUi6wm_1+2*3Zg27<'
    'B4yLSa?4D80a8C<Udq$cCDWp_){S1T)#!}=+PF-IGCBnvYU=qfvKII4%T!ejj~S~}B^|h`D%*)2r#U!wb};;+;lmk44g;3)^Sxt_'
    'zgYgyh6VaCC}8X<qYa&Ik{@(@7cNJ>S9f*^@j03hhJ%+i&yQ@kl+ipDA!r3S+Kho|c_pQSMoCat(w9pbdR7RF@@83iJH@lB>olNf'
    '%`{Tvg;%uFNWC;B6O8X=I}UczHD?x&O8{Gxxd+&Rfkq4F0b^OS0R1>0OyD@K$9KVYp1nAsME#%@CjNV{s&%rU?`_0dA~bxK<z1tT'
    'rR`4|8NdQGPGq^WkV+!!AEs)N83`F^qIs`mn5!>um{TWS&OoQO`M06&zmK7Ax6lyw6R(_YtV_`R`mJ@#404@gT-9WkHl>vqQOao3'
    'dbYz{tB`sFksAQ51gu0Hq;D|<tuXS85V1Lsq=*R2L=-%kbLM}izah=oa+!=*97?N+cy%Rzju={2#*VCOLJ?FvGp6Edp@vigB#w>d'
    'AF!Y?`7to`&h9G7SB!7ig85Sgd_=Ro;{n%=;t<~HIWxraX|r1Y%$a{{bkcz!F%oNgy^VDbHR=FwC&dO>cPC}M7>WTZn(w;39rBD@'
    '-_64I?H8@ew%4Yvpsaa(?ltvieGRc^6c$~>6%qkp*m}f$->R1FdQRQ?Z4`Wlz|QA#<@sC#mDQ|g*OXw+for%F_d==5KgQ|hPE7}&'
    'n1q(m>%r+nr7?`_`6VnAPI=nvUC%L;5d78-jl;g=DB6ez@KX$E)A;pQ$?#G$-bOxcQh)W#{_5KP>RJ8O6aCet{-pZvjsH6uVP0W9'
    'S@@5*UpDW*{3X@frtynXsjgOHDA<e_1gV{DT0}3=xv$Sc1jl#{;LF7S6VZqyF_ddr=PheREqgtEkMsGGEu$XGv>Y|By4Qo&0NO<8'
    '7f8$Ajg&wD#&(ihuP*A<k^t3RD4@;fC)w3vU|20#FW!^VR@AUN`NY>q6aQv<|7Lps0!)wXf))8*`NkU7m)W=s_bc02%K&p4{|oUz'
    '7LwNrnS|K4=8ieGn0O1qV%ln#?U4AoPJ+pi<=G&MXYt)^k5isb<J_EB+a^UqR;%mnM>!_Tl|7P5nJ;r3rgF@fYai2+LrR-A^&`sk'
    '^;@q$V%ZTVES>8d^J@(m6HpfpSqf1qtZ`ebtSF_RUZuAsJ8P7sXl!(9x)OiM@)^{(7de!;c-f$M0(K&h{gPXVTS$QGI$k*R_}I$d'
    'F(v<*QkXH*`Dps1>hn>xy3b%GI?y+6T2tGlJ94FGy~kpDWin0Ge-vOx@4+bhV#2Z^*Pg;jcPTD-OOC35dYWaar}WB~Sat1+tL}Jj'
    'O08@`o23@?YoW(xV)K-EY*pZaEW3J@bPbZ5`~U-TJx&<R@ABJCg6oO%oJF)LS!Q*Afp72?$a8rcOU?sDS>?(&02DeMlyW#A6YYmf'
    '()1CpO$#yWfo$e3mpoos6apuL$dIduZ%usjDPVCPam+jBc)ak<@e2<k$-JbfnDW4LhpE8u7NPL6`tidhe=R&V-Je6_&O+Z?HrgMJ'
    'nH2<Z+~r=ur$@Ph6s%sDiCvnV)<dijPwat`ZY}RdzSNbpF2>_Bk2Z?$s&l0xZGM^+RhIQ#fv*oK|6OpBkUYOJf3oa*Rw!V8n~U(P'
    'y9%$<Wq4T+^s*OZYa)_mG>m-D=6Ysrt%q}6@o--1iHug2`9|_plkWYSe*ZV1-#;t)3gy`Nhf(O`vj$3gRVrH-g}oMa<+%|o`&yv<'
    '!;YmMcdYHCC*=@C(hH_|DY~qp7{-acQYMIm%9IF7LO}4&gQfWkMCf%9&2Zv{fnkO$<h(Z*vbVUk3uwh8x3RY(m&JRd;W*xS<H&d`'
    'v*hdUaI-i&l~P~(W)52a4bw^C)lK468bVkx#1$X>&EJe)3>Mnuc`qTo$yI8_RqCnfvo`xnwTb)MujWdFc4k_%mFC_ko_k}3xi?mv'
    'd!u0Pe<{ovv&`fViYI@#!sHKDocv+I<lnzvdG-vz4@+b~(hE^KEY?nPs|ifj^Q&cIv$kwI38VFId>pQuZnNBUPgk67^Bbmnx`be}'
    '95od0rQPDaw70@u+Ffxk?Jem-tDDkM@sy5Nn9|XTQ##g1oh13kO9Zp)TjOvf#A~{G#b9l`E0D5TXv0KTaL`up-`YV5cS|8Uodely'
    'aKM`xPx^%%#gjTRA0htnH1r+g?ZW-Sym~84#=vmP<YF`yF6>HhFFQ8My){t?p)6}m9Em`olxaDW(E&~j{+B8^6b9h=0w2EB4$^J+'
    'Dh7vNF_s66`%KdcHr`n4<vz*Ua7png-J>KzDWd*-flCKd`$=juy??$L17&GvWZzbdpZKJ2GHdAOwFT3Xe1A&sy;qoB@yv4Pztrr$'
    '>P6hbSxBQVME6g)A#T#cI)+);IIP{eZazo1S!65xcxe0b?$g^>uQ}ni!(bfnpF8>9>JCLykp}nCk~a7@?>V0Q9V(8wbx$O??|E)f'
    '`m0PAe<acbh@t<aZ(J_&XU>z|JLQp3W+=Gm?g5j0f&xCIAI%pE)R=XDpoUox?Lo_I41Uujw2wOA39xdmCMw2}1YL9Y!R+XF`E}@g'
    'GEelclrnl=@fJq(hapr%yb>jY36yEFpQa4;$+U*N{MRLED~4N!l;vzKuT76pN(_lA6(sQu70rCvZ6)W7`Ac?svZZ5(X5UDZd+ne7'
    'B)rs7^s08Z60r(OSl!A%$+RtgT{_$bf8s}ML~(ccy0%w4+CwL0gp*I5N^~EaI)9`$M#TqEer3u3F?j@)=_UIN(zjl6(`!OHto0O%'
    '7T^_*p#<#ppF>%7B2VF><0>)2Kka$793e^vRuSoEpIEO&y{nvA%T52a4lQLe7@jHR8=@vN+|*=^TjqGv#w^KxWXUQ2PjeRj@k%G-'
    '*MG%x67wA{f>NrPQWf_}E#p|su9&Tq6#>sa4bv@`<RzFOC^`U>(Gv=LtFNoKQs=GiG-N~i{wkT=@Ao+1v`3rnP%A^I(ot4KuCGXN'
    '(U~O^!Yh)Tw!boF+M<KB{Prz*h%!PSSRsSVj**QObeUqlUzSCGEyJw2534twI{dEuM;4F%N8z|inFU4Kau(~4rJ``BhDpMuy4^D3'
    'w=p|+z%AZ$W~CR_Zr_rX8!~xU412;g5?<MO`<`cq;cGnM_m2%JgM@&ju29lgS+6FHlL=?bAiM$SzZf=dxT!+86iJ~)@!v)aQzJfQ'
    'j12sX80<*~K)i2xu2)|N?%tAc@d~D@1)j|Fg$@;cLhU~Xv)LnE1A3v+UiB4myqAw-oj;5B#qt-y>B6@rgO}Nz=jZ}+Y(|j^fg_B+'
    '1h@m(BVX5eFazTbhGvWr270;78B9q^`r#Ct^+0HT;T^I!vDHl!>f^!>X7ItBB&ty7?R(<|*oGY%vHLsgFrZN<h-IZy;06}7zRNBJ'
    '>!&B*0<5M5mMO@5^Kg%9jWv!pg7&r4F_?T=Lct$;_PA+|zf37Dt+*;>JlLiIKG^PyEJ^<$e^&Bh@gAl7R*)<9K%k?4tGZ~cCED$m'
    'JmfW-MxS#jxo;NuB084(4)zRpF@vU3o1qPx>Ev4jJcyGF_I=X~&~vbPG3s@OL(mzc=&P;Yd!w^{0}lQu{Ho+eMoiZX0?TLqYSyy}'
    'gPATU%P+p0B~LcodPZo^tZl{&=9pI2MK3q^#lR>Gz5pf;Qow+3-22`P7zfC1A_484>Hi!U)@&ZW;Kc1YY;9og-Xe5tmnW~A_M9+e'
    '<a+Jin-gntBPPhN?)w+bjon&>{$;^bpB_LKDsD~2DuI~m_Nas2)1!-i<MT;z<K0B#OHj;9Hr-pj>3*W=S)>1()Hc5IjMbMEICeB3'
    'z>2QcIn^<AwTPGo?f+_x_L{vOeO5xviI@Nm(1XJR_jg(!Tb-2e;cgu>MmMeS323;3)dS<b>iHS(uAzAcvf>SUSZD=p_ujjS`U=>`'
    '+ihSmPvJu!$nW+hF%l#c1^CuF!Ast?d|m?^z;?_aq?siq7Bz;7uR5qWJA#(q03oG^`qlvcw3Aw!L>h$*c&PTkIi7}^P7sheq*}od'
    'nc1+aL|y|XfE=1JFz1E1&7&PGOlOO6GhjU|-*t7HHxTWZ!o<_9zvKS7#zyU+TB+^rZHj7F3*d7I<{evAR_*zH?ciX0yS@vj%**@Q'
    '-v0J>ZSPpLX}i$I_IMLS_58U)ZH}-_Ein>)V!ac;YZ7CFpY{L0y{}7dBS{*2*C|@_Fds2XQ3UuSiCk#|BtQx)5<mc;M*0*qq6sv?'
    'Hk;j8bVDL{LJ_`z-+Tdw9~^dskKpjb+{72~6`Yw>)m_zH)juFOv-5qs8=(P#s;sQ6tgOtetW3*8XQy@LEkRwjcEH|T+|pm7#V&6#'
    'Ti6fKVvn`JzgTR7>v?RpefQq+c$v<OiHJwWQFE|q^*f*7+Y>Mp!R(Why+jY5`*#o;b(jys5hI;nUIkGEA|J!9;QOy|s8F5K5a=In'
    'T6b8dnx6y$Qn;MYJr^J?96$y4f#v#P<k+N8;<>|&z{$<hzkRT<$OjxJOAi+FD!AX$%?cy6%FU@>+q7Pha<IRjJd}7WxV<%k+u!67'
    'WIJm?t|5aHO8`t6_|A(t!jsmFoz7b{B5K>Xhinhn*{7Iy<hqym&kJO+IIBND+Ea~@0jb?f`b0dsrH%2~-!+A<lQyCWTi446RrpX}'
    '%(moOKf=OTe}TPoU^Nb(86#J-J$9kTo;1F0B~(|8X<5`($r90+HTCD$Xcgj;Dc=Ie?!;fHwHHtu;2t2R%9^?3xYz#--;GaCJ|%Tl'
    '3%p0XbIDqP8WlQwnUcPEPCbcu%q5tV=gXDU7E!~-Sk*%uCghXytQ$g9W=58s|D%n97)*6ODQ2ICU-;7#<y-dT=5mXHRF78~8lIf@'
    'CnqZZ$_-w^k-07Lp{{n4Oos9Mc5^Tq=K4$wNZ{FyAf=yb##m~=0nZ-{oTJ=fxN&xB<j|<M_fd--b<Wzv>Ft)da3kDGq?E2WNc+4$'
    '`fM2E`?Jh4|3~{Sy~e9AFaZ1awYrT)W_ADCJYVP1$|JC))eK<pb)C6)Zq%L$ZyH`V3x9F^j;q6*T3~|z`ajTuchRu5oY`y>)G6pr'
    'zrs0l1^OSlxd29JO&Jt88l%9f=O-HxulL*#FsY?((y%J|PJUH#g>Y)GO#9UQ2Ttg4p&n|g*wM$1@5W6+j`|2ra<uH@yyTQ*48CZ3'
    'R7jSd6oTv(7ZAGlXzIz)ZKb$WuZ_A{wNnSbIRG1&h1u&U&TbYu)3BBrG_UO!av5`c@m$DIlV*+6@A(Y#pWW!@1jGQ|_6azf77NSA'
    'YI>+f`7;W<zo&m6=wI}94CnSl{6<GV_C$N~8sH_jhRx|zqIchhv(-VP0@Ux_jbupHX%k0zAhuA32oVJ3K?}d|u`a0<!>?96(e+GF'
    'Ov+5hWDEhB%}4<llj{UTVNzPCXbz*`#Ets*>s+gE?liiIw^Y1%z(#OJoX}?)bwdD`Fs21y01nqm70y5<3G&1%D~Mig3S$019I0>3'
    'Fegfye;p|Dt)#6Rhpe>PpT^yb^P~1aFMz7T>voPmberex^+4kRHF{vCf)0jbhm{Bq@KhwK=?)oclWI^=+fNT8FOI&HM1K8&wYbYA'
    '_GT_MtYE-)>oECZBkg#Lv;Bf?GIj2|%RBVSvfoAlBE!DTbmaZm{l|?RcELFHVFbw<;qbUtCX_?P_MN&j7sU6{kI*FTHb<Ra7c^UB'
    'S@zKEo%QC;8&v2zfImJ$w>^$j+eg3RbfYG0Sn2)WkTxPN=EjVD{%9{SZ_f-j@VHAF59K!4u4BnmDF!I;(NoZYtsb;sqIb5(0CXit'
    'jZIFgO=~zBpxXM8)q*=~H(Q<V>G)sUgC4MSGP_zDHw+r}rz&>R0JTF^nRo7mnuaQz_sxC?nRjZ-qWdM_9@uy6N<zHb4;InF1|9F{'
    'G!7Y%VO}jG>uw1=;|CGCpU5xJ4YszoKW(YIML8|Y$r)u{+vJJbPA;~RgzDNmwN89(h8LzasZ)hOy#$-0n5#-TI5J>YnoHu^Jz|c<'
    'Meq#{H_r?BMX=9z)4zmRW74{RyKi~Ub!0iynR8%W*&h0_(5}NvEcjJ`vwbiOzOq!+?3T*D3IlH$InW9YanR`DzuZx5+9hn0kiVN<'
    'po?Iol6ymS-)Hy8$!Od>>zsBI=U>@9QI#d*!$pC)gADnK@uk>kWcd0*h_Q=$sS_Vtl5;2~IsNYD_QFxomSiv`b=yw7lH4hOg?S?R'
    '@@>N&{C1c)g=tA?r^D(;R%3o|g*PrNKk)!As{n?)5_nU2m0xd>X|(w2(686_;>Cho=i~<s$=<*pW<YC@Co}J1ezTRY;XE^X{<2Cz'
    'at|lbBmQzf`6zw6oqUXW#|@ca`%8RBIBI_y0Uw?92IJxTPWLm2d<n+hzU29B1zf7l9U$fp{5%6QoPYWuNhyd2G!vc}_Tj>gnmX6^'
    '(gV2&izjYWtP$opq53$a*Wuy>zW0FF!PiSK0f%W(L<2Cj!M0r5Uc8-?s+STcrH{qc7@YR((6hrEa<127_BMhQt6KuP#LfV;5ra>w'
    'v&C`K)(hybN<l*Gl(><{>(K5qX(|=Y0Kt^idnRGt-?OTpPVY;}k9>tsCt9kkdZK~r&)NE;N%gohamB1wIyGD23w?nl&|HO1Dm$zA'
    'o(JK}M}RrDdV^+nd`@Mt&A*>$yygrKl+#u)nJnin*RoLf-Z<X$1?XaM*e)C!?_%X69MASG8PvH=DP8Aw7&#tYHyv8nKqUFwg)>e1'
    'gjBB2+F(4!Fk#w+#xFX-=nBgA+dOL@WRqo8XEBm2h%{RT5HGue(b7rPu3-MRhgn=s+Uv#Ugvgb}XD1(@#FLugvu1B`bhHFr%%=(s'
    'isyjYI9Kdv<{h~gtd^KvSM;-FxAG3sg9-YZo&eLQaC~}wAIHHfR;s>fU4%j$d2V#%Mr5UO;z{UoJnxw-*ymX~G*?z}kvs~!#(Pn6'
    '{QFUuvT3PXJXP|!jj8Uy*%x#yjyHZd`=NGN)Oa8o4@xu^ZAb6h=j{^h$;=uqudm&E(e-70|A!<nEQ(uUr!TKB<v=kw#(9*O8&Y)k'
    '>+O4xD=dbbT^Vm#KZ`>?_NSxD;0KoNdUrsz&G_#BhGM@R{IK+3x4z)(2^tOPVcs&1_QV5$VFvaZE6y3K98Hh{bYG3D6B~V`H2N4;'
    '5Jmy~!*SfI=6uma%BL>Xt6a+$!)w%-0k{c-tr$U28hCy0DWS8&HO_alM&PgBDA3DXw{V8T!>idjJ8zTcHGA7zO2leW<mx1`9!vD2'
    'C>Ca0+H4}KPkxonsKx-G$BJLoP^*WD7gw&`z<aa0+TLhhDy<snu!4-;nZn5+TvDEyfddBj%R#);EziEfC^H^AMA8dTz6V)^+j$x+'
    'qa5!_>=rM(PO>Pb<n0Z14sv(=5RTomJR9IK0}hxe@EeW@gVn`=^(PxJ%?EqAW0sCiF^s0hs-#umrLq;y95mWH*UhgW0MPqcTn_?6'
    '8M_x}XXy$HoQn&zfQsVittyV<Awk`)_DUK<_?6wOFIHg&z=&MS2*gJ}A}jNN?7P;IK}4ylaMPb6tyLWh6$9)NegaW<`0QCl@r?u<'
    'k2<5XSVivN-qF>OMtWC27BY~Bw{ZT2tHGA@wy2Pkv@$D#R-&X-*iv{_8u&9&^5!CPL9u@5FM_*y6u&c|V<o<dP3;=mmvpmITXEF}'
    'uwC%Vl%Y9*ePnw`Vx2u-l_5U&<M~s)Y33fv_~T>71HE}4PAfctnQzm<tNEtq&iqfk>+8^oHk4~#2Ks#;46xnC%G`yUY)A*U0x`xa'
    'O@>FJ+l(T6a=Wu;lw+te+OO7$cgwkU{Loo9;t5y@^PL?d=8fu@59iJ37FKj;|B-l8QGhhmQhc%!)<Bvkz?wlV$0jSG?KsoM`q5@k'
    '%{)?lnD(c>0FQyr0rU?w&g(}3?!rH3Ul~-D%*Cot$-z^3#NuNTv)HXB#0?Oeyetw|MqjN4HpvJR!==dG$Do>p`B(ccjivBwd~h6A'
    'P?x<+u|0HQ3`W+Veb#Ocy75DoZ#T}u!S}J>>~QN@Ro#BjJMWLi9A<L5qGy^Nt-HdkS5*4=AqXir*3606rBLwAx8|f5fT~8=(<b4r'
    'p#(d6`P=!*RS1JqTWut(fr&dY0(?c{&5~XnHs#~@?c)#Q&PT%|7gXh0Syt3|I$zr{uDa|EI;Ec|gWBwQFr`9qLQ&$okMt#?PAbh8'
    '%m_W2OdTT<e9U>MkZn#{vt)jo*&+YALYh#SVbyP9M%h-sPxwZ5Ey&J+5AAl}8oloft$uIV!Pu4q>G@Xt7}dXa7k3zLi!V@b9J;K<'
    'x@gH`5^-~Y;r(>&h)@=E5di)8#qM%$T|HR%5bMzLov+S<Ro%d*%sIRzSuvPk$|z0KjKp?}E<mfK>6-?aeW3AOWBMxFL|AO{ZXy56'
    '3q}Wv>V#NfV9_vE=cDzKe`GsV#KyRHKx@~I9Pc4--<C8N)tS{~pECJpDYD~LEYm2nz%_h-$YOM8xPJ+g*Ga+)jA=b=*AL~3e%nJ2'
    '(!&dT4*kAjW&+<KUoczk$ueSoWq#>QNA=dTmF-@pCRVsgH0cl~5V;Y{2%n0JbMP6&F4qs1u)Wl}VNl*F!%%fV44Bu1omZ)vlUVMR'
    'E>E-Od4=v-3%o*Sjg2j_J;q5)Fd}9m?ltHR)N?T)iJzRDv^T)az_#o%gP7eC1up|Xes%|({XlfyvO2)uI~WYZv+KaV596K1wiUr&'
    'GBcj<uB~cY8P_AOT+c6F*)k`mBi(B%&Z>hITuhmjuY~8tsB_jCeNN@t?D))wa$;jS`G=&~GJ4QD{tzENU|=9?H3Ci7RFAphJeU`w'
    'VyIrqRU!43E^bv~Gmbx4-J`bx!3#v=n#AKuV8GI;)Lnh$SVkYrzPh5TNyMYo{)Bt^A>P<aFeF5@nQjxVfysq>juwNsRdqpy0y{ZA'
    '_d`_JO<H<o9Hg^7n;p!^r?QBx!mUQpyawT*E8&t-;hFAEHM9wbig`~(^=SDCs=;@kDpUPDRi^rPO6Z;J1VoLSi(qWkR!Y&W*r3(;'
    'M>%DyFp&Ou{wD`LHfQc1frSj^MOJ-LSWUBbFC{fFmc`7}1^q0JnnQzVpDA;V7x+fjy0Ry?7<0qbI@<#yE((^D8z(k@$coxT>yF30'
    'NWz_UQw%%HzQ&X$fb$#yyHOH&i@KcVsu1rei;h8)NxH^c(hPQ}93lT3(9Sq*%6T;(e;3MGt>VimvM(x`QokQfA6x!(WecLzpudd~'
    'P}z{pm;u#I;S~*m6_+Zb$*&A2t;??fNY&=c09c1U|0sT|2w<Jc^dDOxS*_~0S;bAB-I%lRPhjKEKq6p>^N?rcms0OrOazpx47nZ+'
    'r~>P(Q;q)P>$2sU<u}u2*T0r))@NA~W`^O>15tXzjpKhxYcimnG^bMr<^*J`NGNjVhLKvgk`sgfj(2+O6Qvgre{|%;B|iz|`_aPi'
    '>O0Z669`f&eHDU|^dqe+rUr{Aweh2XEDs?q7AWNH*e{D7p0Ah(kM2q5w(oeBy@<XAi(63A7r}CN!!x9cx3MBK&Q?Lf6d6DL_0xB`'
    '-nradlPxB@_Q@j;R>5|)RggfKmf?BsGHCXV+*_i%JPA{q6z)pSm;B&FdK-D|PVh!mXyhtoSUJ_T?a9KcW+i`(j)?jEQvflKr9vq)'
    '4OZyEE4lDXOp!~?%|0*Jk@TaI0XjNLg+0PldwC4~yB%tbft|Qyv{Z#Lz}kEnzhp9E^hP3%G5brWrTZQ&Ol^mAVAPGGw*n%;iD6v&'
    'MKdmZ-@GE<vZ)*Yx#fftuzlIHfut2<4rn%7*e)DpGOjWd&CmM!D9VbgSR6&ziM(1y##F2ylptGL3u+t`QZ(IV=b$XH(>-?&Dy~Bs'
    'z}`XWB}#YQKPa<$x}L8NiVJ<nLGuYi^OgG3pNxrn_yVP)yze*Tr-jLJku}+$bCVrYpBPN`=d#J3>?;9XKGHLKO332ouY*ynlccZ4'
    '$sF&2S=+&sEcg(!t7N^%Mu#PD5LviYZ<LNWmLH_w^XxPf+ek0Sb>WN&jACE35Oci|f3BOYotB4mE=2bB{a#FDua*<KwC+K^n^_FD'
    'bB4j_1;JBrR?h3L{9GcP7E8H<&)qOBYAu%vomN3!9hvy|EKoLPB&wR16C*1lx3{0m&X3<comMS1<h>?N*|@y2=v6WtV(B*a8=E?B'
    'c=W*YTjXsH{_s7Q6FG2LG-D*_<B8KeV$LL>5W`<2hv%bTZuztw6ycFiDfy`R_eij5GJiSxR^y4+9<hc*W^y{RYN^PiAlB9ctfo8Z'
    'd-lY+3Gk^TQU_n$j46|+IHhyi4V_5(8tj`5%=3ttcWpSHoj4WbDxm5d)VUi@(tsGT*dS~(D|bGR@wZbGSjAIdbu1X<)1svP@zVW{'
    'c~0$nFuteKFQFugcZDea#HLZA5aCaE4l8=VfS@|zdBJ33N6z{n+65EJ&X(5{(^n`EH`D=YsT}CQQ!n00uqjD!f7m`w8Gyf}Uk{(#'
    'a}=4pIP~9^_Ir2g1j}e6gD7R0Q3gp@Nv*;{K;z5^HEn)ooL(z%LOR0Fv3fx78+p~T*DxASqd=Ke<j|If<-yZg8oqn05YhUJ$`<bt'
    '7iT&Q?i>ogZ${REwna1g{I6wlAg_oAFiH*%@T)q$>dw@24-o3SJv!?hk58JT_Q}QBxZNdx1t_%!YIE$Bu}@$#UoXA3KfxEm&Y~I;'
    '&toJo`nh@DM!mX4x>(Dd0y`YTtnq+2J!+yz2+h|vtCF^N6`{nRc2M+BoiuIxi{Q$>@*arB6&=PpdZmWbZihz*H5^jfV<&JNWyMP7'
    'SKSshYGI}m@+pq^^Y(d9Q5knr&o#BjxN<U?vym!ib_+ccc%lzk8%;fe6;9Cx;Lfm#>-;eIiK^t&&rG>n<)Ge+-;7~J4mRn%EM>B%'
    '4IWi+3e1<0<mzQrmEPv*c7mM}o66HjUID0mdOCjJ938)B<)R8RCo+sSt<t#?D-mmF)8bQ>3B(c_=?<VZX@Hm_DPr43csYR9EaPB)'
    'U<a@%ZkR3jFO^}MwSDLAfl4WA(#PH{y~ypfm`;C=e^BOn7!;1u{~#(bk!TXwpnN)W{o6h@48L#?ms?4TA9=o7sc<rPCm6bli4~=v'
    ')%TV*f>9ll(LbeC##y$S;l)k^rkaQG(EjQifiia60ET$+juGgzEXLa2T^ZweHTjTm#L<xyJ7GY>P0)WXPAoL@W4vqFNJ*!OPq~0|'
    '+n|U?3-34p%O;g!lK~-A(#b7Y$zx4gE&emR<<9H}{Q<nDEg`D|2-teZN{lJr{rRo+u{{`edR=sRoQzKg?RK}OM?X7Vn2>HJgJJvk'
    'nne4&J!qb_s?0!H5{+e)zU|nUakJ`S?wok`ECi<F@gf*X1jj0=S^ef<gzihkc6JWjxaD%It>j(QWVxVZ>^##*-JFs{Znj&l*`BJw'
    'XQ=c&msUz<N{!c<rSpG!r*K?0U^U0?WBkd*eW|Fny|@i|Wr8B7lDPKDcvlZg<W5fforU?0Rpfa4`$u~;e<N>Z2`aKn!n{Y$j}S^_'
    'E<HorC%<3XvR14WK=fzV^G5cq(>x3O*~q<fk^>|WeAighavI*abCh#?W@ybTIKD;!najn1>f8Bv5tv~h@=NA{+TAXmBHGsK469J('
    'H*j#$E9_j$N4aYL{kaSDn!5HRS;-BNS%|(fS$eL$fC+cqi9=fcVb<SZ@*&`;bZp>pWOO`Hi*iV$Z22-?7s|2=X9gHZHIr9MB;~~e'
    'c4r4mSiyg+Btvf-OsclY$rQ6J&b{wMws*B$%#LAo$~&qQ81I7!qa^)VSm+1Ifap!92nEBPjvkJK<=k_MRQ!_NpW63Oa_bG_G!U5}'
    '6#D(W<4rq}b0^0Q&<_Lm>I!*u>Bl~Q_qs4-*_@s$n{`5V+MhYs=*nN-`7Gy}jEUhl){#zKQ_tKV<6JhBdj`#VO|(!FIg$`^h1ijm'
    'f=6^qQzm{yvvLJ7B&?zvlIRT6VivAhL10Plk`~02<gIu?Oi4aN6oi%J@{6wT>r`JoJDGaFd8&XGg=vb;+oWFDp{zKU3Q@y6>LC9+'
    'qxLx*jh)l;=J=>R0H$e=2kmC7J&+&wbVBm_FiS4EJ}HrT@+pnEnqIVnMjunqJiUx7s1n6=0jA2y(hYp4Fp2N{Ax5-dU|lH#dCcU;'
    'R7khJm>fHN(xv3oIBHRB;ztsiOni#pO!+<Dx6fK*B+w;Rpm?n_vozV&MCn0>)hjCBxnES#uHYb6@y#B^X@uhwIkvU73+mv>V!CLf'
    'R@j(}1gzxxehinDs3ug;jk=IfN_)=fHI{IlH!>-o%iWbTN`^(Oy{oWx5mPD5%{gm3kF(aqQG?FWQLoEFv^7j+x?95YimpzkVMOm1'
    'unEaJRtW+B6rbYak-n6n2>|$0dofM2=1*|teV*lrUh_^5;<QO^^yXjT&{OLrPlxmsW_5IS(S~2ZSYf~T&dkPN<O)3?D@7vz5IvFC'
    '?mec*Vx_pO&<n6$R>+HOyrha7fB@JW2*`Vg^Y?$daY3KDb)0!99O+aZEwq+COCvS4?8zbsL!O`JqQjEiY?-SRuv@WK@XZ(H34Wnk'
    'M&Ezg-uwQ`@O=}O3O?_D|DkqB<=MQYQv~f|o`LmBg7unUvG>!?v<O(&Sw;)n%RsD45F6j6f(k!H_Ypm{c=qUQah;DtP0f|gM~hx$'
    '!J3Bn$KRGV>i?TO-xWjqK<=?q#}X>YB4F)rz@#yEKYaBqz}#RPNK^Qx{$gjFScxXg>*%RgJCKP?*XE~jzdaxwH9;~K1T=rC5ZL@-'
    'gLa9sM6?9*8mQ+wA8ETfXyhdXE;EbXFf9R$uf9R~5L=!wRc&WbiJtez@uD8%jm5az99<0BtXS7D(_XzH&bfHSGMoIi7*V*G(~aPY'
    'y@_1uGi$AsS$$rs;Dwy^WGJmlEXI=sj*b<Go>bMz@LK2Nxczbbu?gqHP}ch&FN`vtd&2S*!vWwtS)8H|jL2QnRx>y2H;e+C{Ort8'
    'T>M&b^knwZpC814t#YU*`d?}a;uts8`(eruwLKBX!-=URkJPv&8n;R`J{FCSOEf+bjgLw+Zi>du5{-wV@$d&Ftp|!}aoLHV(PzJx'
    'x!05@f0*5t0HMAogJ|S}IM#z`>?<JN<bgQSfdIbW+0N_LH1(?I^%|Nl++_|j=$UEPjB<eqJj;tEz3-<&OdH#hMsjE0=Qpq^OM706'
    'DNBd0Yf?InS#l$i`kcajlM>gA-}iHko4Auw*-U~eO|~3F>Ocy=2AWJ64z4-+kRS9O-BKlmS6OHZ6*;(8`y>|}^r1R3uS$@*$bJin'
    'i4vYVvmXKqf_fIm0j3s3)ODf|!GyB%*D{IZ@0H2c3i%ry+<G3rnX})D__wGPN66G{Wj>biTZM^Vnb<A^wiN5t^H?tfvK0F@*3EvM'
    'kL`~}7L@6kWi<V7nduq4KzZ`CjMt~Es)T1zzEW1xzxXR1)_}!D_H`N-g4<p7I=ZCSM9LAA!l~GGlJWY>Yp}}xQ~YAY)Wd$!P6_9<'
    'SM*1SQns4|EZQgGoOVjR0N_pxu-$GI0Cb!wZM~hfZ9R$f@xIghN^_Rz54TO?Lm;zF8o$XlVJWaG>=V-k*Sf-xUss5GE1GGNoJ$G='
    'L(|E*pO1nVcaZ|Ttals39sokF8Tjh4VPU&;b<rphE2oX_+Ez><#F$09|Ct<Q6z86BuSyPdl*0l$7@{<BMp(2i{4(ROF2xgpIPl|g'
    'Yqki!MK=Rjfy*z_NPn{Gm)47zS{g3T47*)%B~$>p>#_g)t;eg}tt1st%SL42*LbDZ1o7G5P@*o?pX%nH8s?vNYKPArom(rF9i+=L'
    'XtkWkcD=B-IJSX_JPJ4|&IXXmsrA;FQ)}g9UYd-qf-W5897t8Oag_lbTYAU=UkYh*S<}_VHpHpOy!9Ies^~ekT&fctLzl~VqT}~+'
    '8BcWEp&%^f(V6Hf?v<P{m)|BSUg=#a{zuGGztq3c;(Mt?fL|_{s{5u)4#HRemeLJogbycYscej|pDxLcyyNgan3$5}RhiE-T3g}?'
    'r)%B*!nt<ub0dZ6LphD}jwAJRY0Z;ls#)=5i`hJH4-*&9eE!k)mTMlPFBDu%mqE3o=qVS@4w)6V#+|eU;?w?)b6qARWIhK7$F?_F'
    ';;8*T#>gB6{xYO4n+fpwoW8~+8_5#pq-J5kLTO6V-HhM~`jwS#k3m{LS@nG?AfC=eR6$)A7)!J$9eh%17%+tA^U@&8=G9mww}w8n'
    't7=*eX=df16q@+N%>BOVQRBDlzyin2>DUK-{@lLr&*=rqfwl8?a^tvI5cw@8iiZ#Nw^z1%4<EMQ{@q#F(;x;UG!+xH4HF~G=h_GR'
    'T-C5FN#Nk_>h~$n$jQ?44u#;vSrDd{_2Qj%G-!5@dn%xY5zx6aJ+x#%G*bf9gfpgnmV#6_LOKh+sgQ_N1nH~^IQ_L5Lz+6*_R@<E'
    '43OxZ_Mrrc(HbFrY!A-cXYYHOLqz+)YG+d(BNNq?d0@4p_##ZX$0~UucXLxlrR1{Qd4~)*gDl!El`K&iDl7f?(*fUUiAQoJB%g`S'
    'GHaG2G%GXxEx^&8&_wKVMQmd*zX8Qfngtbb1=T{7UEL7JqM~7Fqbm8Km}pn3#rTUU@$JBwL?z0>DtSvctvz0d_syn733rkg@;eP{'
    'j<eto<i(^mbcZYz$Dqc4h6AQdhL6z=Xh3Y4D%!GTkJ~w`p__9Q?xYg-nBtC88Anzr!pkBik=QA(m>{*y86}~1%sM85CtZ{fu-}#F'
    '0;hjKy1y#1b*a_~vu=JLC)n@g1xrs}&V^TK0v0E@Rml2J|Ia`DKmVv+ibrmN(oUWAx-tw{bAQ6n3nDp}<sJFF6kP+G<apDBIbYyH'
    'Q;rXFAJtzbhS&K7jG9lSySXyni&lGhJm~bX%68c##hmEvYm66{$WGUhn4^au<4QZ`SO8ORf3vhIDZFN4?IicqQxid-8b2X|E(d<8'
    '1vKYLS@cB?d!@RTT*W6(XdI1)@3D|!bJRZVfxzj23ZgGhB_0MJOLc9~WKXUt#4l{oQaX!S)4x;iXNnk!vx&TMx%Vl<Bh{{Zej~<J'
    'k;)W?69X67sG33+nXao;jVn6dQekvr%=(jfUIp~V8hx(MN}QK(bGD+HSK<saj9j$p`+KSE)20-#k{3AV*jTqf$Z_~ev(kHd`P8Z<'
    'XRi*svfEe~-+ck^-=K51{zT4Q$+z3G7q`|$=fLuVuL0xD5VjXq19k4KexJKdvtHBnIk~jnMDzY@r2J8<`W$2SGwK>3i{J#q(_Zjy'
    '$Z;`<$Ms7`oiodzXs{i%kB_Q(nH%x&T<l3Y43gf*z5eH)F=y_{r|bbS{ASMyS(<k0DzLt3$$vKf_$Ngko$ES6C$u0RXo~8qgKMP0'
    '6~b$jLT~qVN%R_}(2K#Dyfz5}X3vhqK!yYv=d_A&&_+kjNwAm&QRMhfyZhFo?iVM|)6cDuQYAAb*Fda^GLxCd4l5QC3kAG%algE_'
    'SUwDsNDVrpHZO&i!j&8I99zG+SlACJMHmSBvr|}PD;`eiMU~5>u`?O{<)Jrz%&XsN8bJ=jsDfCECfajl7_T8K6G|zVGNjq$2|MFj'
    'qJmZ{O-Ct78h_3#8m9G^3)k_X6ix%J;RC(n?+3U4@BjSoJ1mSbv6pc8T35E`S)hy1Q@UlyClp$IxGf{6a-spJjyo;NGP*kJ7TVJa'
    '6YDrBR$8<R<!&;&*|55-6y5N~^??CFyYd{)hbbCffG)Inu|TE83a%-`0#>wG*lu(n2nMo^a`svikQMam2%Gut<Q6j=zvPJ&7Qr{3'
    'B|$US3?3vXIg)&XgzSTmjAI#j5J<1Nye}%st{aNQGcyWH7RkkYswWaln5Xfam7iOlP%@6o_8R759%6>LRHQs>Wc|cAhhfKhgg3!A'
    '4k_QS=Y}*YJz6L#C&=l{GH_TS75H2@e_Of>hf1@%A#CBPgSs^Sc@2l1)jRsDW#fZ1mLxD-P9{zmZY2vQAqqH1GmTYl{Hnb%Y>$WU'
    'JKfK#toB=l`p-mmg0kJ;z14GzaQ(6+VQcZ$%9raJ_&mmt0eJCFmWa<K^2qZ}zSShtfYUg#7o7gr3rvr)ZGF3OSS}6P(3IQT@<1ep'
    '7OaYGF(wdsTec+o2p};;o4$Lu!H~=`PCzzcerEK~r4nlM8=)e<LFTF`b|PTv!o(>*bf{uOJXV=X^7`uHLuRsTLBVg_9VLD)HIShg'
    'H9(WR|BoBcAmCNNMVgrDe9L}s{mEiUwvVxhJ^Pu?zm-q8w>c+Vv5Kdj6tmPxA*c|FG+IiqMCtQW=4jTVAB1Qm*dASsBAusXbl%gy'
    '4=inxPLtG1>_TZ_Qkz7sY5nG8cu5|9_64kK_u~AhJs9^+=;8<$R1#-G00s8l7SE*ArPo(8A|*ZHVURAx@45rg1SRCGFC6uwpl9Fp'
    ';}#sW^+JbaN<?Cq(LKiZ?5p2nJjMfj|C-ZByUr<XR-EivIi`r067ST?Mh^3*RV=7bTc_8+a<l=@KMzOk!DrBW8rw_(%5GLwo@i*G'
    '-QV@p1~52_4alLti#_eaUy}*OHTBSDFNZS{s029FkqevEja8Laoktz#v2UCQ5;Aq6RBa7pRkQRR(#p%Mj)0W!vr9Q(vL@>S>d$Gr'
    'JAPA<kTK;VXJKOle6^ZKwnp(ArOZ*CE`H#yCAMEJreytu|LD8%tOw^JT|1S-0qhJe59P|<d~&Lh_{<vAJVi^zj=``=Jetb90#J%E'
    'rR8pY?l#Xm$LTX6I}9<R4-y@TfdSHFRO85Mu?_1l7S6QO<yx0@K!5ixM#D}^sA7lN?A&Y?$2ZR8mftPJ(;<^SGbcLV2?v%=?`SzY'
    '06PSXenbOK!y6ZsT<?L5qL38eDTB;L11p!cU0^qshY%KA&3-0Dw&n1AL~Q<g55qHoqhaaMF9`y}g}-uT-XnIo9=2hZ>$a3uC(Wvk'
    'YuH#%yB~5EMx#>z)zrK5ID#O%ZB|>;%!TC2>!(|_w3(0=g*tgq^h9+v!S}3KmLv=M1hS)8W*FzK2#@tkkMEDZ@UL*N@0Qcwo+O&5'
    'P#(V7H=O#rD+s~I?{M=*sEqD+;~iy!W?1T;QfnjD%NvQ(?V3)a2(wW;Ok;&%8pdJ7sS$xej;0@*$%}V3n5kgv$yQtPZQQV-ZP<_-'
    'B49pDdJNU@ObwN_N(F3lw}z&hG`=#8BWLFNKFh<E6!lV?w1IT!50)y|DHF^C(a?fO_zy^a7T8!B=Jfg=HU{^PXvF#^3*=^^@9}o6'
    ';^Grflf5h6jis{%3ZIqF5xtAcGLt`TTMb#(RddVA2UZLk$v}3T?csd-?qmarxtUQowf~#ND1|^ss)rcHe||X{_j|(*Ud4`k{XPio'
    '?uhb6U6zENwkaD``_0{HRjJA7mzovoQQeEPvm$+e9VC5vvOb2iIpkGItkvtDj$#VI&TStK=*9R{=mZ#<b<X^;7%nqDZ+79p9*mot'
    'mWi0Pe<WfipM=c7p!t-Hz`CJ_+Lt4YyhI2loAK58$ewM`sqe=>Vblfp>7cUUEW*IInJ+LiLre0^(WS_yI+e{VRa9>qRVi79j_Q#f'
    '1zh;*hBU6#VKw?>qtZS50jq?8#<OPs<@0<8CN^Ppo)Cp@u(-25j!3>SQPYQiBNXU7K6=39YdRW&8h<RFtgz6!+{n;M@P2MLKWGdw'
    'IBe7BSNfn`Vyc66(LKIe&|H<z^lZ0j?PB!Zt`y9QsU=yXo_%+2M+^5}4n+}nl6=0|AGY}O7CB>tAX|Q)#wE+uWoR?8J@3k%+~Tzq'
    'eR&M~f)Uc#hxD?A8!V{oW1I+#IJ6VS>(ULP6VIK`ooRNdCI7HyfE(<mC}IjP<@DgXnOx3QG|FB!q~^P!Rnga_rV({!Tx6cuQ)kPj'
    'vKW+Wn%|^|1=AHfRN7FU9RsQ5cH6S=QIbpYw@U5$Rsb#VTFYjSy7=8z3aBElQ4mSn6yp>Y$WR#h19rO)YA6L@@wbl3aBL)}c^x^6'
    'mIL@<cP6;N_U9c#%Z)<E1B-td!ACfdeCx`w=q1KtIgdaozjCgF1uINq3*;@jj}Q5EqP#R1X^kV(h$DJhrg?FhYJuhleaP~W0-J}M'
    'DZMjAl{3I$#YfHIhr9qb0+jA32c~5ajzMO{C<d(TG^~s6#jxFCtQ0T%iR-)J4e(ML?Q)i?YMg?mbSaCOSkCZoS^(zZu?5E2Iz+*o'
    'vsXM7?olNtQxmxM3jJITJ=fu0rt76Y;p`HyFg8|1C+4G&qBtzivA>F#tNw5(Jr;D6q(0nQB|Dw(`_*ZN81!vC$`nz!jz!R|fw<ky'
    '5;5Upah%EX1ZcgZzmEH7qY(`C2p&<*{hHx2r@pWCSkpovq0q0ZE<=25^t~uz0lOFeHAvv;7ng!Gr5{ej*9GAoK30>)%B5yozbFPF'
    '4XWvR$HCoIAV7|qr_4*=9DL|>PluaU_M1?kG44|_4^!aZoq}!bfRS#-*$;|k`b%Lv64Urwa40a3FCs@V)B?j=e&DQ%7K<?0->%dJ'
    '58uXqr7kJ;rEXa2frBnLFkMzyb2a9;5GN`BIM*ay&k2tn(5gx=x_HWAK#KWtv|M{kVYx@J=Zhym_XYR^HfNE%Z_Ufy?|o<=HP6nZ'
    '^k%GRqPa^_e=mt|B-wivc((O_|I>dVr~a@1{n!5%Sg=wv7i`C8!u&*}z%t)Jyu=+!d1-@~YJ!;(!U#P+{DK33wo?aHzP_`c1mLYA'
    '<Y?G(LiiEjQ_Q`SQ1{pWJPCZqng(obLT9$5G*L)vdloEgE0`?jwgvz9BX?$7zy4Ps5VoKF`agYV5o}t%ZF#PL17A9p|Lgzy>UeQ='
    'xK0=b@Z*&Oa3%rJ&xvddPX&cc^a<iv<wGk53bHy3ZTJ_*XCntxNlqZTRqjcEN(`z*`4sO0G{cmB9H2u{`$9lWnAYiePT|oNhHFl#'
    '$}HYpO6LrXfI)`rkdgjG9Ewu`S6_#$18?;O*urz;RfAn6D$IKW`{3_^AK9M7$LkuE4v(FE3V%pgoVJDa(zJ=zHF$QP7u=6=X@~D4'
    '@im6#83N|ml3X1>RzM2V(_e^qL0-dhNd}2z{Yt<M4DnM~`cVQ6a2)tky7*<@mik^p${Lm65T8R$*F%|9<PAGi%2II{y8N4Iy(keP'
    '@k}l^Wkg=6so_f8GBe7m@o9NMf~5f#zgofD)S=^nsT3@v3srYYQJggQY^aLNL}4Kp$*?Z-pBSh&<?nKD%9SiAVDzcZDp{7v2uN%h'
    '+a(`GDxTh;o(h&$z}BTe=S;Yb3`M+W$b@lc1!8XOb(me9#Qo@sRD7@BFkhsEtR@)E)fC9gXKxub;P71*1Lir`QRd1f8R5+%M%ZH`'
    '&;u#VpcXC3Lljq{wL=<xlYB(i%oSFgv%2)~`)v3-cRKZ)X9gKAchUM)<s~~T10-?!%6wYBYyDE?cvI+v4#9kHXks%a@d59w9od;F'
    'zW%fIs@Rvgk^Tzfd95F<?fd#kO8ZDPd}lRwYnpwdKIuu^Ct7CEb&*_9MuD51h-|$U0ez;O)AnU~K@^AJH}vn#QW?H}ievY+j|WUp'
    'LI<?PX&Q|Fg|FezAVgA+Gm=ANb&08cS1b<(jO6Oy8Q88bBTIQI5LGHp{n&#oZ~4SQ$Esle6f1A5Q9-@_(~0uZQjQ^{MqA~I@XC;L'
    '6US7Bwr|p3@I|t`wjbI4iy2Y80etK#E5I&I(dQMHv5G)9v^7ecgifvxCW|Ak0obiEruss%4IE4~1=fmU9&p$DMyALXO>h7cY!15Z'
    'L9(QV$E{v4xurn86VIL%wsym#;2yqK8k({wK2K#)JnDT~wcq&oVleCtin=ctsj%!4OOQh6;I=xg4v(EWv5^@cHfrgghp4vUdvDfm'
    'gf>b|ky@tZ8aU`rDYs68HYQM6^ZF=HmH$wyx#F@YjZP_L(}T0<w3^|?PGf^2DRRiv8+BTx78dJI_7}n3Jj&d{8LHgjG<)5%&uMvL'
    '<OkLb-}mCPY+P-a4m3MCYo40h*3=^ah)_DIDPX97|7~i`mrY-X{rT@r2N^5%+Ol|gIRVha4jPqaq4{%vRy5C=gW-!0{n6eL(Fcrp'
    '7BD6JF~`J&bo7u(MCYC}O+78=NS4SrkeL9}ngDUkF$Pv7$2g=Ec2g&ttbI-mMl5SJ-YKOk!!V^1##Gvr_W;PT^0XetU?@pWrkGbj'
    'l4asy4Rf><O&^x~uc77AO7mdF9`k3S<s9R4OAWTXXVxlQ9dFqKqZ--z{ceV&JmJ?7q9|K(sZ*_x3x*U^U5yLyrFO=$liTU<Ry9dI'
    'Gb!8qgWh?6G`<*h&N`#dk`ArUMpe*XpQI|ARr%SPN66$oEuLpwSSqA+eV_V4SfQ{;Li|l@zabSDbwTuSSQ6kDv2{%Lj%f2|*`AVm'
    'Zp-=3n!Ux*(K3nxpI(I((uWR;%@~|9QCJ}$d5+0k^o2zgiEFs(Ct{0+73r-EAd!5<sinXvSZ!Kw^3ydQA2mRhBRh`*MHFCIa@W3t'
    '*|5KrQ+JqLSN}L;nq41^(g$8q)%HHxi}CjT>+S8`OX)JZ+d2M#y0xwr6UuBg=#7u7NU%6Br8Fo)OOL9yI1ZMuTrY63XC2>-ps6y3'
    'xLVdk1OR#ZVR(FF`!k25*X6gf3Pn!WM-h>+|8)ICZUxGc;zP*psnFT99XD4+W7uyWciO{EwtKX(`3&+Y<>M-bU0WHIejBvoZj<d6'
    'GdiWW0<p>e2c~Wd0R'
)
_EMBED_PNG = (
    'c-rd>@N?(olHy`uVBq!ia0vp^0zmA*!3-o-7PBv5U|?nl@Ck8UV`TK<#|(y1FbYN_cocYZKadLcba4!+n3J4vfK7sv)4<4RQK6(^'
    '>xB}dMXytiBuaYv9o#U3<9aaPg}Ht$`3qxW9=0T!@i8(PI(k@!9uW9!+xD0v+N;*#uYvP~AH`ywiEdI148mOu^#VRSSwPl!y85}S'
    'b4q9e03gsYmH'
)

def embedded_bytes(blob: str) -> bytes:
    return zlib.decompress(base64.b85decode(blob.encode("ascii")))

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def sha256(path: Path) -> str:
    h=hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda:f.read(1024*1024), b""):
            h.update(chunk)
    return h.hexdigest()

def payloads() -> tuple[bytes,bytes]:
    c=embedded_bytes(_EMBED_C); png=embedded_bytes(_EMBED_PNG)
    if sha256_bytes(c)!=PATCHED_SHA256: raise SystemExit("ERRO: payload C corrompido.")
    if sha256_bytes(png)!=ASSET_SHA256: raise SystemExit("ERRO: payload shiny.png corrompido.")
    return c,png

def find_project_root(explicit: str|None) -> Path:
    if explicit:
        root=Path(explicit).expanduser().resolve()
    else:
        start=Path.cwd().resolve(); root=next((p for p in [start,*start.parents] if (p/'Makefile').is_file() and (p/C_REL).is_file()),start)
    if not (root/'Makefile').is_file(): raise SystemExit(f"ERRO: Makefile não encontrado em: {root}")
    if not (root/C_REL).is_file(): raise SystemExit(f"ERRO: {C_REL} não encontrado em: {root}")
    if not (root/'graphics/summary_screen').is_dir(): raise SystemExit(f"ERRO: graphics/summary_screen não existe em: {root}")
    return root

def probably_patched(path:Path)->bool:
    s=path.read_text(encoding='utf-8',errors='ignore')
    return all(m in s for m in ('TAG_SHINY_SPARKLE','SUMMARY_TEXT_COLOR_SHINY','UpdateShinySparkleSprite(TRUE)','graphics/summary_screen/shiny.4bpp.lz','PlaySE(SE_SHINY)'))

def create_backup(root:Path, files:list[Path], dry:bool)->Path|None:
    stamp=datetime.now().strftime('%Y%m%d-%H%M%S'); backup=root/BACKUP_DIR/stamp
    manifest={'created':stamp,'files':{}}
    for rel in files:
        src=root/rel; existed=src.exists()
        manifest['files'][str(rel)]={'existed':existed,'sha256':sha256(src) if existed and src.is_file() else None}
        if existed and src.is_file() and not dry:
            dst=backup/rel; dst.parent.mkdir(parents=True,exist_ok=True); shutil.copy2(src,dst)
    if dry:
        print(f"[dry-run] backup seria criado em {backup}"); return None
    backup.mkdir(parents=True,exist_ok=True)
    (backup/'manifest.json').write_text(json.dumps(manifest,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    return backup

def install(root:Path, force:bool, dry:bool)->bool:
    cdata,pngdata=payloads(); tc=root/C_REL; ta=root/ASSET_REL; h=sha256(tc)
    if h==PATCHED_SHA256 or probably_patched(tc):
        replace_c=False; print('C: destaque Shiny já parece instalado; não vou sobrescrever.')
    elif h==BASE_SHA256:
        replace_c=True; print('C: arquivo-base reconhecido (o enviado para este pacote).')
    elif force:
        replace_c=True; print('AVISO: --force-replace autoriza substituir o C diferente do arquivo-base.')
    else:
        print('ERRO: src/pokemon_summary_screen.c difere do arquivo-base usado por este instalador.')
        print('Para proteger trabalho novo, nada foi sobrescrito. Use --force-replace somente se quiser substituir o C inteiro.')
        return False
    asset_copy=not ta.is_file() or sha256(ta)!=ASSET_SHA256
    changes=[]
    if replace_c: changes.append(C_REL)
    if asset_copy: changes.append(ASSET_REL)
    if not changes:
        print('Nada para alterar.'); return True
    backup=create_backup(root,changes,dry)
    if backup: print(f'Backup: {backup}')
    if replace_c:
        if dry: print(f'[dry-run] gravaria {tc}')
        else: tc.write_bytes(cdata); print(f'OK: {C_REL}')
    if asset_copy:
        if dry: print(f'[dry-run] gravaria {ta}')
        else: ta.parent.mkdir(parents=True,exist_ok=True); ta.write_bytes(pngdata); print(f'OK: {ASSET_REL}')
    if not dry:
        if sha256(tc)!=PATCHED_SHA256 and not probably_patched(tc): raise SystemExit('ERRO: verificação final do C falhou.')
        if sha256(ta)!=ASSET_SHA256: raise SystemExit('ERRO: verificação final de shiny.png falhou.')
    return True

def restore_latest(root:Path,dry:bool)->bool:
    base=root/BACKUP_DIR; backups=sorted([p for p in base.glob('*') if p.is_dir() and (p/'manifest.json').is_file()],reverse=True)
    if not backups: print('Nenhum backup do instalador foi encontrado.'); return False
    backup=backups[0]; manifest=json.loads((backup/'manifest.json').read_text(encoding='utf-8')); print(f'Restaurando backup: {backup}')
    for rel_s,info in manifest.get('files',{}).items():
        rel=Path(rel_s); dst=root/rel; src=backup/rel
        if info.get('existed'):
            if not src.is_file(): raise SystemExit(f'ERRO: arquivo de backup ausente: {src}')
            if dry: print(f'[dry-run] restauraria {src} -> {dst}')
            else: dst.parent.mkdir(parents=True,exist_ok=True); shutil.copy2(src,dst); print(f'Restaurado: {rel}')
        elif dst.exists():
            if dry: print(f'[dry-run] removeria {dst}')
            else: dst.unlink(); print(f'Removido: {rel}')
    return True

def build_project(root:Path,jobs:int)->bool:
    make=shutil.which('make')
    if not make: print("ERRO: 'make' não está no PATH."); return False
    cmd=[make,f'-j{jobs}']; print('Build:',' '.join(cmd)); r=subprocess.run(cmd,cwd=root)
    if r.returncode: print(f'ERRO: build terminou com código {r.returncode}.'); return False
    print('Build concluído.'); return True

def run_rom(root:Path)->bool:
    rom=root/'pokeemerald.gba'
    if not rom.is_file():
        gbas=sorted(root.glob('*.gba'),key=lambda p:p.stat().st_mtime,reverse=True); rom=gbas[0] if gbas else None
    if rom is None or not rom.is_file(): print('ERRO: não achei ROM .gba no projeto.'); return False
    emu=shutil.which('mgba-qt') or shutil.which('mgba')
    if not emu: print('ERRO: mGBA não encontrado; rode a ROM manualmente depois do build.'); return False
    print(f'Abrindo {rom.name} com {Path(emu).name}...'); subprocess.Popen([emu,str(rom)],cwd=root); return True

def args():
    p=argparse.ArgumentParser(description='Instala destaque Shiny na Summary Screen (pokeemerald-expansion 1.13.3).')
    p.add_argument('--project',help='raiz do projeto')
    p.add_argument('--build',action='store_true',help='executa make -jN')
    p.add_argument('--run',action='store_true',help='abre a ROM no mGBA')
    p.add_argument('--jobs',type=int,default=max(1,os.cpu_count() or 1))
    p.add_argument('--force-replace',action='store_true')
    p.add_argument('--restore-latest',action='store_true')
    p.add_argument('--dry-run',action='store_true')
    return p.parse_args()

def main()->int:
    a=args(); root=find_project_root(a.project); print(f'Projeto: {root}')
    if a.restore_latest: return 0 if restore_latest(root,a.dry_run) else 1
    if not install(root,a.force_replace,a.dry_run): return 2
    if a.dry_run: return 0
    if a.build and not build_project(root,max(1,a.jobs)): return 3
    if a.run and not run_rom(root): return 4
    print('Pronto.'); return 0
if __name__=='__main__': raise SystemExit(main())
