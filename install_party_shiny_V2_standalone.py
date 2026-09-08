#!/usr/bin/env python3
"""Atualização V2 do Shiny no Party Menu - pokeemerald-expansion 1.13.3.

Corrige exclusivamente a colisão de paleta que deixava a parte vazia das barras
de HP amarela. Mantém nome Shiny amarelo, brilho 16x16/4 frames e Switch.
"""
from __future__ import annotations
import argparse, base64, hashlib, json, os, shutil, subprocess, zlib
from datetime import datetime
from pathlib import Path

BASE_SHA256 = "aa7fb6dc1050ef15299da94088d26d138e64c3a77dc1387b2d3f0c40a3b97f77"
V1_SHA256 = "7127f9aa3430cc5ba5fa825a73f334550a03fbc9904cb505c3bba60ea4e49c5c"
V2_SHA256 = "9c53aee0a75f80eefd48ae8f2b0eda964ea383866a8953e00b864e7e2d60459d"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"

C_REL = Path("src/party_menu.c")
ASSET_REL = Path("graphics/party_menu/shiny.png")
BACKUP_DIR = Path(".party_shiny_backup")

C_PAYLOAD = (
    'c-ri};d0x!k}&!|Pr*5-c8;9LjwIW$lT5ND$+E2-'
    'S<*`KWU~2kRkTFQJdsE(NyYY=ld4;FU*W#N{c&rbW8dUH$?a|cBtQZrWjixx_uHvVB9cI((P%WffkyYAU2nGB%pL1bi=}^MFZXW#^z6^^yP3bb'
    'zMtBjyHek;?B&v*sqe1rC|WwYcNzfv!_4=hz+Wz%Ak=<eT;EMY_<s|*OKkzyi=5!vp6T0NyI%|+?gM+}&hx%auk1zY`yx#oXgrM6mvcL^Q*Rug'
    ';yQ4`R2LmPyr0f)>=Xd!tK&t}EEx9Qzxt~)i>538tFwaVbP<0El=8i4ICH#I&#zr)ITr+<+Fzl8Kv%-'
    'KzJ?ZbU$9Z#`}NYkcY+*{;Vf_*F9&kCc4n@<40Ydb9Xq;lbZ}SpI`wurhc<NYrYkp0vFkOkoqr2>d+YR<0Epzmmn_#U)|+YIEK-'
    'Or0(*Vq&QfoQH9Z^0!(L9qC~&=n2BaG~tL&R8jP6GBdK0FGU}mpV?JiyKOZLq)xZb4aa2geO<E7qYu)sId8)v!BOj-KEN7DV9Gf#hwfD|yjuAC'
    'eDtLvu*6j&>`^@C-'
    'q*4kb=QRJjw2GPBSK%5WL!@2gqI4j@NzMQ%<)0e+)R%`v2F!BR?;Y`E(Ff(>>nayft2lt%y)iS_9I7c(=3nJpiznyY1q^lXuY!3$0(M~0(;I7l'
    '}{Ee3)X}AvDG(|(0xRHjUMy6#SQVbB;VT$o0=Pt^=nclkI+`mnI2<&+ZtBr?b3Vc6BV_kI^M(BhWg)eo>Q2OgsOmR~&Srmr(g|bpnD&Yq!6!9K'
    '#OLV_>jG$<47c_@uj2{sT<44nkNlFBZE7PaY&kQtSD`w6!0K2k&duG9Z7oGm)bbNVn(HwoON^d@NC+&0T#p$5e8+_=DG_R)P&P4Zm)R|n4`noT'
    'deYHxv*>87xb?Hra(z%cx&$_>Kq{m6~=T5rF#o(9hyJokSu9kW?>NHO>m^5TcoOe%UT*saM$#ifjzv}cS3Ss&Ke5KNJG8lD~X3x4~wbo?RJn7W'
    'aFJx3EgYj6wb<*q&&Ze!)UQ6>D=+W1_{?LRT_0Ke4PDkC7vySdVQwQiG#SZQBX8)`MgFL#(zHPR;z3xP&$Z5CJJE2h<Kl}Ff*|V1~t?o%^!Ths'
    '8d9dsmuEN&R4WkfV*pX$g*Nz=nw>OSw*%nO@3*@%thF0h-VH!GfnX#MgNq5j6!(jAzpTrxPx8rxoD95jqffjG2u})f$hdZvGjClNtO|$8s-'
    '%Axv_*T40*i^hxSw_4iCP_6j?Dlo<k^QkDiH~B~gUR4RjI8?U-#(r-'
    'M<<<W`?8gSm!1E*FNzq*6p$o={##rfc|;oCVRJP3IBgAno%TAXlWBX<yS(6yB%emzvvbq8&c9wZd-'
    '1mv^hxt<Ivo7mX*GL2>z!3^)N0kthw1nN{!ZSHC(X$vjAa{o!65z_6j@mN>FYVNJCffzJOp^jM~2c6kQsM+o%W=2f&i^b-'
    'TLV#tG1&lciQasMKNBkt}8bga9&T!HFV`JE_;*iwAq^^<@R;u7%&hXNx1`4yMxn7YtZe9a)-'
    'KdFmWyheM|1gD_yzE{^eM7mzO)*NeD>d<fJ>Ao(w)PX!Y#3%OR`2tNBK3f*%{%Z^&I#ub~bnO(Yy@Yrj^j9a{R2h<;}>=~xxD&I_w{SBJ4hsW('
    'JPwu?)>HNJ7Zdk}pyv=glfh{5`+yZS4OsTmfUCmu6SmiJcRfMpSqung^$gP^YcO|W|nwlK)gAOhw5i)FJCvkj=gD{IVjTx(34YSp^hMAi)y@qC'
    'N)PRkDv4pX^y!{~nLK$#$fQcmFPDV=2FgNq6L4G%x}I>_4lwbTf*5|hralj-Rh8=gaRk@0yGhS8$mFgXV>ssMU=Hfnx+_AEq$WM+}3V{MMDkZ4'
    'C#n}C+u_LqJTe)?>^d&Z}60tMt@AF%{UElUCgIl~8rQdO){LqBx?^Z)(N|HrrHzJ+>~g?bf|5LEpL2)O}63#=t;?gowvFF^mA*>l?pmwtqGz~='
    'FR?wx<%*vmbHcn2b;f|eH87d_`X0`|Cd=h4m1^J8n*s@H(&8|yn<@@xQxy8#w}yYhp%y@U1dp+2uZ@z+r41yz#%OX^?Q?wwpcLsCMk3*G9%JLu'
    '~tPLJ-tbv}P;B((jlUOTK>_4>D}WdRP<xtjI={h$B0<%IvfaR4|g)~FvrvDb33Iu&E&u_a)K3b2L=*r5V!-'
    'vI2j0_?y9?6m^yPyvPmj`ZDqy8jSd4{Up9&gQ-KGM<w&<X)VtD=-V792TA66Y51URRjMv1PczP=-dgataxbIFlj^ktHbbDCB(`N0tOOcX+^-'
    'E)$*eoi&?HA$P|12@)oVlSgu%C_weL;2;#i=VGM0`?x2+rTG_kaM4Q0*^tlS+!y>B*F~q9W52$7VB|&!Z7FZc3wGg0B-'
    '+YfX=fNBXM#g#(s&)R_@tnD!#lV9uwa#8%cH_PWyq)<Tr{?*Pf2&#x#{)XaWI{uhKO;P>y$<|{G)F4nIbWehfb(e0+I`ZY2Mc@yQk*cQfo1ZF&'
    '!-'
    'K@c@Gra*3zDRc^kjF!pBDPJa?S6^kfHL>d7NeH<<bMQZ0}?t=xI?uyhwUkqkJpU8osrLWC!wNXR~u^)4<`&pQ{L=}G6b2?_+rpjy>Xq<PVqoPQ'
    'ioOy66VqqEEY$w$-oi|$FERJrlb#xn5#sM$NI8nNsQr-OE<**BGF4~9dbU1z_J2IJ0$!N3T=+dt`^4NPCh-'
    'QF)|*uy61^}Q*m?LV7}^qOGJoq$q&(aj-avjw_s@3Ld2W8YYL*l7x*DEskjV5V$)aEVZnZ}jUku}>dF$@Ijzwl~WNR%rb1oi(lesnr~J{<QP9u'
    'xfMVL^t;#uS-'
    '>ltIE`EZGr_TH}_Iq<hU|bFWk9@^F*o&JXoe?XXOO;axV9^b1~|jl&O0HlYB69Y>#SFU1Hrbb=y7&uYfnp>LO>4%G4eCp>yl|bE&t;_hqVfy}7'
    '&am1bc|oDIs<9lOh~DU@--'
    'ltOuEhmo@!!jg*hsV>f=GF5x9l;Ij7^%kbtNvURA_SJoBxp8Ecg4tJ&r93eML{*%Zr8?`_vzxds>nu*&GIh`Vm>ES~oYh!0Q};Rhl>#AD!OY}O'
    'l)_KO<sm`ZAQY-'
    '50Alg@Yyu!egAsyQUW^cgfG|Rk7og8N2trO6A@JqNOa?A5s%AQh1?;nlj$CLML9i80;sL$vFxD4qpplM3ei$LJRWb(yCPs|)**cn2pNSG<eQBl'
    'rtgWAj6C(^|DgLa1A>@jgAH_QT*~E`ry5#U<Kb}#Ro*z9kFOtmooKu_RjIlb3joijj)WqiU7;T8JZs=Yu9jo_p#OxPq6N1uxbx(SK$|T7XW$pX'
    'f(itFxVqs*IMgOCwK1fZ?Qv&~yR9Mb<ojV(>Eiz$47c5q=KABM(*sFCYHpX&!&tS1B49WJK9<?&Q<GarI-{`DWsaGxd)7YufQv-fht^MR_ziJ)'
    'ur+x9H)IWe%RqK$Kc~!OG&oO^`U9H!ubpgA+U#%Zh>qqfN>xe!QxNjwv<TUCHLVZ6$uaO{fK*)-=4hhNQ6zYH}?%nV*#{wUQEI<bI1-'
    'SaFDxxpSHlSOts*S@!<P&Wmjr_hs_d|v5M+)7K1%;LRuL=2A0>4I8qI><YdJLo&PshqIG@u_1>RAEqsve@@n+&HMCQk<m@%IVS<1F92N^ryiK;'
    'gK@K>nCf@HY^<o^-'
    'VVe_j{jA8SDx)b|yZKTtaIN@4k<Ea{Pz64D<cvN7q8iN|Xa>PJbxU|f*;M}?@%`j;O2eFghN1^Xif`(qvU65$cYeFghhD)z6F`3u;WV0xkYX;>'
    'boY%=81C>&8g8VSoEQXkVSFO3cG!Ew@aAT2QYk;L-'
    '*$<%HfP)BNom?ui7e!A`})Ac}^uCJ8odZeAM#|iF75|<p3tl5{4uP34hkq7oKMqcQ<dI`U;NcclVrXM9jQzIsEvphleh{R-'
    '!YmH>fktE{x3D>wM$JItLzYA4cBjFp0gg;Ou{GmJxIp?P({E<92k<4|8yZ0pte~4sGm>ux00lycbu4wsXguEoyC9VM~YDf=!a;Wf$yh5?nRc4c'
    'e1poayk^Z0%|BQuEFana8C&q}GCtmuM`p1g2;q0=nuuCFuj&PdBf*z%Otqk`_CQg}E>OfhSUM1|LVW2}|pw}_)EBZ`L#r}XOUY8i?pxQVtvCQ@'
    '-+pSUigsL<Tj;I@H#E+A)IifY{wS@SA)DJ>D=?5TwNc||{d}i6{rF_FA<qwq^@G85yq8L{co7akBgStyingWLjJ0aS&GRrG7D)orh6vXQa;`Ky'
    'zeML_y;&oh*WUAJx`^tiJAgN$SRnf)9YgA|?Mv;wKJY}a-'
    'F)$*Qcw%;M`L~|YoVEJC<=jPq&Clu9_RO(dI)XwgW3x(XvO}y3$J@N6=dbp1gJrF`vvjYVz>b{dy%pZr0Ul4OXXspNgXow}nrF4?;PiCdnJ`kk'
    'I>;?tR|_AS3&V;q?hg7%`B$%U3O8Z?%b;H!<>RazS=a6k_wiizFXO-DBcHByK(!`+DeOg3tDY)*-'
    'uu8xc7C07`qbl#=2^GRS~xg9XdfOO?iW{z8>&CkV$*7l&_l#h|Eo7NCn@OPFeUy#_BaQwOYN8wT=HAd?gl6I+c&-'
    '+Iz#65oE$K;&j+AsSxsv=`1wEo<6_V+07KSqI1HdychWBSZ#^)uCX+$`oAui${z=^(TV+5_{K#G^J$qSyRZy`xn>k@PoTc`+e;ZGLC<2LQyWJU'
    '&tzo-}K1(3aCuxI=18c>-Y4?f`MOt>CxTGMI-wggJvY*O_^X{Zm)%w4reAL>_{<PO=j{4+8Srza4gGuIfvxjc3AE!U}2Oq|H#i!lzv~zZrc87x'
    'r^?^LNEq5MTwcSHHJa<>?r8{#Y5J`3zx(gJ65y(1wcEjB>fyw^!KgdVZv$~!e#r)gy@0^f8f9OKX<1?U6;%6cb6O+vsUZ?9_`y+I?=9?;CeRpn'
    'Eo?k89=yc=Fb}Ac?_UZqxe1Cbo!w<TTt+~5m&I{qE#=+<0wG+;8z|j9D^K#;^Gw(j2hfe10xx-'
    'G?bsgxk+a*ikoMeYz5Niva@EM>B+x6P^a(QLXzQCH{M&g0Dv){00G<(nO<@K9-'
    '@^)#5(U?2Ij+cJ)X8$dX+GWVbBygfl;NdT}ABMgn<Vd^l(P3i=oqic0=GK*S8{LwphQHjbyfAKpT|(&2+rD@01}l^wSAgA{qqo^2wl{N@x)LBU'
    'LVE#4-qa6b+Of+4-'
    'T9||J{*AfDLU#~<P<lv5g9K6+F0C!)_P$bSl6rwdeOr(cXWJV3HMR>N#2$(Eaua_CqVz~IBU!C{LSLV!kY@Q%P|a>W8M1b?KZPR$Ev)x(Amm$!'
    'kxDkOm24xkHGAB@#PvXBF)j?#<yUeG|5{z+!I}5-'
    'pk>qi{`KB;>g^b0hPmq;gVW$r@J1k_@295+LkyCvV8P<LF|C&fLQIWRkLmYNtlO~+FkusjcFn~G$Wze4SD|H?t0web3hdjMJ(I8-'
    'Yl2odME>F)KnmNPY^VX1VER(ahC2Ehj6hYLWs4_R1~(G?<`S5fL3IQy9gFr^iaVOz^+`cF{=^;yrkkr3|o>M-'
    'prpfS0Hi!4nFV;MHbz!i``Y=ZEJIV4U1swY&z^sCL}qmmoQ9!bNuTHl-'
    'c3L4#^KDvOm>deST{aEqqdD_kGi%$9nFHpKqlqcxuY{zwIMoGu$1&0C_m(6D59!ZiJbaA^J6D-'
    'mdwy$`*&kXcH!{#WwhdQS$<ZDG0@KMQ>nPnKUhvh=RUk-@UW?m%ZNGXF2t)Me-BYyV|$6B^m|l%I(qG5I2^sPL!t7t;N~(-'
    'Gn(lmaM=_GuF}dh*k@!8z4bDk|0JeC#5_9UkJ&2;d@lCJI@qTB>Q6MhY<oNDJOw8_5e8ed5D6&p6)>HtwoN%ffe4m(d-7rIa_>D$cMSW8d_kc-'
    'qESsY2dG@k0jboM}z*P+ZjzIA5rtTW5W_#p^GUely=O*lml9BF|InUKg6@GsBp`VB7c>XN9zuVw{&*7e=fQ9Ms~1pA|&b;ST?w~b>zcnv3VW7<'
    'V%_*E=iJ8HTf4VK_y}}*wV^YRBN-owSzg-'
    'k8bEAF23kKiNCK1DOi?n(VuwfdkcpgvS;uHgf*hH3(^wA+`|3p>@pP5t&wB1XXy6Gc0rUP$tTpIu_UP!2j2thxz+eg)EEJgR$z37peeYZ(k&c+'
    '<wRiD-'
    'r8ZZ(zu}3iQA*r<OZbwYJ(DV6MO{>0lC%M55O8Gim*F9!Ur_m091g*+Gp24k~;=frl54gmL0k?nkg~wRLJc)?GBGBPH3Grdtk=k)oY+AE%G#G?'
    'i~;p1q&{5AuK#gR7xe+csA-f0y2>hUZVGH3YjxblZ;4ckq15F;7t$!p7NnJU#c2nvaoeALe+X-'
    'c(npvR1XAxX!+OHm^`Pe*1_%(6`|)wl{o<WpeGoHzRL!v2NYT6&9+n5Q%a!{22urmaFP9oZR;B5zPNV<gJ6Jz4#LSuP43rDUaLvz9-'
    'DQg$}+{NTv?=3j+{Z6B%{prQ&ag^X_qSDyBy)Ih<>SBYFS~`=^7lZ*q{M{rtqvixIhJxAaQeNf%6#FrFM%MJOZbk1PaH3DvX@aNi44lzDrD3#@'
    'qTyrZ1TmCB=|&CNR-jvMk#_8^i2f!ko#k1at`hbz{#1&^CL%zwUz&UeFDGZE-M7poX>`_&11Vo2U{V)7qI-'
    'B{H@)?sA?dM^o)lC7gWeI&8_&7AMF0IgJI=SAaDZ0ba~G^?lI7Oid)Kn&O_{z3w~C+?ngD^?ZAtT3~T)$NIYB_&!y9;%f@S+&gokl)nz%m@$q>'
    'S6Y*Y!X1C?Z-'
    'N=~tw2p4MD^UclUjjSBh*~v{T4y0q!#)5>xNNkkr@|E1JZT8xn3{tm2DkfMOS#_Tw_Fl40!Eew`mzn5fzyaub+^BOI0{`=T5>KjJ!86W?EF*OT'
    '0@Em*#?vu@RCEDGF3d?2}aelfb?$-&m_LRrYsGg+^c^+65v8=HYFAiF_!GUxi=-<E%+hL*`xY0+f}7t?vR#<NQ_;%q+1|7NrV-fs#9Ev6K)9n`'
    '6@)l}i;tBlD>MR+%zl`zG51E=dE&jvPT`CI~~6z=k37WKqr#&@l-'
    '?WgAGTohIHy$y!FD;%YfnM>|vIG;mnYhCYRa(KgBo$nvA@ukW+KPTUZ~oN#!w>waQKHYisYn`Pv(wJ2vWfL21}Xf0>l<<v~x&T7q+pS($KL=C1'
    'G$PbT1MCnRx7F}tpD)DyaHnl#0gj|9|izoCJb-8BFB1WBq!h<Wb0)TOB&anAkoyjKhgF(;{;hQo*@~|jXu<y>kc-'
    'S{F=<GF)cWE}rLL~*iedEl&JT2Tan%{kQ4#uAM9pIl2zXQ+<`|i8IJs*Oauoc`AeB-cSLBMNx&OnNP2^58n1tL1T43_2Bi9f+Z9prm<!cu>wXn'
    'Y`elLFZuE5%Li0L4z|1|qeP?5VOdoaA{6NE83mRivK`2hc>&Oh=SI(6&vLPAk|Y>~eF;JRoH!k05Q8_xpjs&WEJ?-'
    'mI(a$|vyn+5l|Dew3Uj6~gVoSi!I`2&KWO8U|iRXDR@^0q%um88@96Ol0%@28~+znXAGVOM$VC2jZ=&FB-VpgB(jc{W?T*IFa2c5BXi|1M7O@u'
    '|p`@Q^Erm4|j`bKWz@i6rSP4JC*hoOmORf17Sx~a~Cxq$0MH>b~qGJ^gsOV0hF0T`+zs>0EZhl>`aR`?E)934_^4D?IkRSVuRsddbl1aXY)qtN'
    'kAq{yTuB#-zYu$4@5H7EywJL$qv3O9fPToYFw)DC=@Q&^X~yRG1ud$AbNX!BP^IP21XS_-`Ye`JYvj&K%-'
    'hKh6bw==5CrGwm58He+R?1**M0{*0=&4wX{uWm&ds2xhw1^KgMAvRKS<|(lWjQ-'
    '`_$AnbOiuPhz2*F6~8_Daw=(sVF+ypj|ZxV5z`(Bkr|}nn@D`iK-n-t#s!|5x#ZD>>8bENA5duFPh$b>_kA_Y-'
    'x!DQBweULR<8@(Lu$gy$M1;nD~6yb;ZtYZ@zSxNdrvH*n}wtS<NL?m<^B1hea)q>v+QTG~lduP*Drw6OfCaIK<oE!zeIpy-6pReLw0f78O;;;-'
    '--A$R&UF{M+-'
    '3ibflYksLYbm%(gsT|s1b7?;a68sZb54=VXf>IkbF*lXY)t_i102lr&2NhoUzox#F%L3(1DlDOCmf)eG&bPg*O3AHdgI04`*8kC7bu9=b4d8oj'
    '}mEe<@xaqwM02ba%Zhchw1xKaH&m44smhQ}5({A|?=GHng+reDs33mPHgneHrooLX&fv5J2Tsv5;F@+vA4{Q-'
    '=mA5!TRLr#fM{xNJ(?IWf>y1f%jOZK@=DDbm!)Z)}DAO&T#vxPUbEHmOmK~0;1F&uCo%oxpoO&V2&c1VtG9Xn})4~u2DdPLY6{EpLG@_y)T0hu'
    's1pJ#J4ss62EY<AfEBU`{R_n~-UQqSKp9ikra)RJ~=+3?%GnpZz8B1Yv19N5gC0i-'
    'WGx2uyW;w^>IKePPj{H4oT5jTT<bGf}(^<b1k^p3t@PM`J@l8ZCQKZVq4Iq4id!|TMLM<^EzooS7Ji5ibVLn6V2{r&FhfWrf{^JZ|rwe$-'
    'Q7|#7t~xszEogzz2s>PB@JxYGMV$H>7aN9Oe0<N#)8QCDDZ~{Goi@AkEt-'
    ';)7Xiko2a1lyNC<r}b!4f7pr|zrgi)`NThq2<B+_^Z10`$X1J4;p&e||`R9tpY4F}iPEF_p|0TollDBd+NJrhW#Z(z}uO~>aGAJ=pfP4L^f&$o'
    'sRWj^4HVCn!V5_y<XhXlY-v(zSKm8K2EBya?(Se&H`=grJ)mvYuVBkv#-'
    'kkAOnND;n<pV>?Ui@nOk@{^~mKb7&%^eR6L1vEiS{oIylnyHjWRJpK;iZ&fYm?&nXG*&F4^w{y{Y)FUg65Nt5o!7G-'
    'N?<6=2dx;ou7YV<1%;Qhu23AzU0l1~1Y^;c=$}$FuX9WdV5^HCw1()6Y}_!X<s6MfG-tqwwT*n7Xwwm>3}7yYH=?Yjdur+NCb-TiOlW5?DW-'
    '|ON*-<E8eIQ7wNr~W8mwpqh;np5?95#K>1}Fmvz=mT57VIHao?NPRIN{28@wtjVy@ZpH!#ZE)P%)-5TKHh){M5>$yIBk3LP*SCf8N82*-'
    'k?0L?_xY`RO#I)j^gPq9%afh%#~A!(h=@<@~*)LV0eRy4L@DW5mPn|3RI?STb7*9zow=zKVGFbfD+<eIsO42yK_P@v@r+RmM?1^PI1y^t!QKFv'
    '*CX2@q~DR73#Jn%lCSFL^r!HJUXgRjUQ25lg?2S~Ir;qk*ct(>Nl{CQ4^kpm=}Ianf3UYz(6s8id!wgV?`A0}?R58tuQAW%1PD#pzYss@x4HFG'
    '6c8vQ)kg)>;uZYMs_ci|XX8AtwF;DRMgx|`7a&7jLJ?7$YVQc6u4IlDyF+!J0>BLG345Hv1X%;HaW_F`J+ue2$`<?B`H(j``MU5#8lEX!0myvr'
    'PV_-RWx@eu^MZfJxk-lxzCO{mW4jkkxWwGm7iSkCA7WmY&@e$gTG<(kkLF6zdSEi7jS+9(OMQ9$9obBojsbN29X|5Lcm7+b|nX~&rZ^>djnDXj'
    '`Ro#O#&QDR{+2?+6>eAx=hWEPifg{}6E1-'
    'n4`i%l4{9JY}@KgG*``7=~9^w=u9Fiax7@yhGygpKGy(LT9p+o<Wyi^P6L5)J~suIF2n!nqJ@CTK#{0iLsE$KPapQe%14%^1@%jq}9LFZR-'
    '<P2wA%fQOE5)IW{I1DX<3jc9YOvve2k6>Xvy?3Nx|=XMzH>@`_LiWV$CVze{|YEnbYBg|fF9l0;;yQFAVedmQ-FRzefQ(*=#Z^L#<VL<iNkmRq'
    'l1IG5Sm}iVmMb=kn-H+LZqHrYA4-z`ik~1dO^thiY?Jsprj9$JteTa(-HJN*}=5L#!eMQSg`PPz!D?W)Z4M(CkC}v#FGR<~fxtk{w0_Kg-OkpE'
    'iuz(a|zpn%a{MZa6V~(F{f`hKO2^qybG_EcLnr2NK-?-'
    'PLP0*RN&ScPVT?^)Q%Z(^u2X&mC=1npBK%1@!=7usT18RhK4!4BG&bZrGQ?ABph#Hq5QJ7PJZJ^Y1N*H#;#An)|HGiJiUz`F6I4VU&n8%^%Gw!'
    'ez;7|a8k)e@CN!)YOp3;gEbX1)4z3-DG&uasfliYqT+%Ufp+M%cy70Bx-'
    '?u6!ij(3Z4sTtWzf6>}3uZl|zzB*oUsSh^ZvtJY!JPq9Wq6Bha7#A11z&y5j#prSnNUc?2p(fW7sGQgrK(@zY1cbnfWkeJFMUEyRU69mlbdgY_'
    'RU~ob&|Hj@^dr8d0ke*4M26KN9&(=0H;*fLk+Bn%D0S(DrOGjl(WL9a(kcq}hiy9GUOH<(h;-f-(hdIU$e(>_FWuFZSYA@j5ttp-YF=YV4D_jL'
    'ujW>mJWfT{rRmY3l*FoedfM%Gn*HuY`{HDJI%-'
    '~YD)rYGwG;oUQFt^>!A}1~laoV(fe7}WybTSQ7;u%FVazkLmyRe9A05ZxVVGlbh=oq=8Azt%DU$WspWSP3?p#~r$#l@Xn6mCn`-'
    '9O%vloZY(tX7ET_8l=>u2oN@+RPU(<l{Mh><a7m~rW=gNOR)-O7@yc`!NbrRChMZMrXMiLB68uvt13p>5%K6n2dT<Jdd6TCew(e`A-'
    'f>CNKGUIPqrUKQ1)?5!_ZskOIAhc(A|IT;_!>De^~(|Tuh`|Vb@KfT;<RQ_ZJ%hAb(qKYFeD8PplSStZuf0YNE^(>nog3FP19HE7c@c71YB2BC'
    'ESHVbo<O=-'
    'GKmf+gdl<+Cb1%NKo?EXD@VY$z5ZMcOZ%9F>NkpUUm2*c$BckGa2~?rz<1iZ7E8J7ELjGf#X(K`7KFP1NXVWyiz*sr&QWIiuddds=SASJY3|jx'
    'f=L;{f@<SU?ddEU0@Rz_*NtJ`va41IO#-^M6<Kd_~>0nO0A&4QIWnB8~-'
    'ANd(Y_J6H`kR&Xj*q7R(EYbmeav8|)>va2Jq!>ey<)?omSglFPk8p$B=>~OP25_uB$p+xB6Dj=L{Ig@f$77s=|jDd{qirD7sCpQ@&e?AxK8>ov'
    '9E|5%^k_@aM6sJIIH!NM4<Yd$E`S)ll(~`4`-'
    'R8J`L`V=D8x60T(cwu!RKT72K7*hyxBO9M$BY7AIg1@kmU`5=c;a`B@UjfuGg!7gV#FSs_hE8zo;<uPnjC9sPY@W#Ode(GC5&p-'
    '^+&kh9#dvsi$vPEvlO;7a8Y#}$p-rznQmtsgAsQp{12n3BSA(dCY-dy7ISTD$M#u#kJ=`Ui$osUO@O%5hcD7KX}zx(Cau%`SS}`jnkA#1LOAu$'
    'YplYc|4~J9C%fje)3N-$9|Zb!7*87PG`(UUOH{mvi!9e7VA{5RPg{QF-vvh)ZE|Kw2y?j7bu!1{Z4TihL0T<IsF{<b;d*ybo+p68_f&$xw?(Q|'
    '>nqr3;cqY&MA0p6@V*OZ;l$qqJ?{8yZ;r4B}*ujV(MKR#P%>A6{J9q0?IWEE?6_tNl2xZcd|z)kidXkZH8}x=f>)o*r${=wYVO&gp}Cx=o|6GL'
    '6>v4<FJ~6!B#nJ<2wE)Otuyw`ue^+i1HU2WaMDIVnI9N1&nWb*lYCsr|;W-'
    '2Oqj{d$(E8ue3wz{%ys#m6aPG3i_kd(BBlpI|UGB@5zONwc#7&0G65{0s234qn4w$N1Mi^nrgp5JOPkf5l7J4{N-'
    '1qgLmo`PaBKt9=y1K8|4@#juZ3u#aNc$1&`q81|70yIvQt>kR?BUKg<Ibrm+1CfHP(U{h)S_265zh_(;N3C#2U)?-'
    'xS1iw6qulnV6@&$j2;Dzk2A}j|XhC>CsNS5E?IX8=!MvIxWgt;Mx^}<kE%(z1!e_}CHEjx}!`zH#P=#UlY2DCa^SICB;F2^<t;pQyhC4yssF%I'
    'Z#wpqJL^ll$kQy#!=O>P2|71#3<yO3;&Yiy0jKofarJ&Myq_}tTrfSvnUR}QR`4v(A`$C~5O-l*h^9E#>!tYF+Xc-'
    '^vt)c06_GfenedcxPF`Hs^gnePpq!mf#ZofQJdEwe^y?hgy+_XJ(4AAg5F9h}B2jUi6W(OXdWTk*JQq~$S1hkmY;&}TyHL-mJkZo#aiLUDxMsv'
    '2Ops>UG`3hR!Peb@yADR90TFpP&z&I=gDi)dqpQbe2zkIHI_H@d?ixYt%i2Zbr;J4|525&p+`K$&!^QHguSpnapion`2xDkkAQ_f|=eI`Q+ZuA'
    'HMrYnv&7nNwwL5uQ#Ov7}(Of4lEjQrx-tcYc+KMV(86N1F;dx;S%r71F_^SuDJ~8iv@=#QR65CF?3dqvNV^U1W`9u*AH>c=yxE$6;s6;@3~lo4'
    'wPWXL2}wU86}9ZL~W_mz@O1m|aTOr|pvzrrebJ;hps}=8a;=_L?6DmlG8`iEWl50wVh%K}1`r;<5m(uJx1E9F3YES%$fa4n16FcA)5s7saHY$j'
    'I(zb&$7hFo`czuF*K;H#H1u-pSy@v_I&l$@qgJ;Ea?Dr5KO$I1-'
    'F(x%X16d283ITYvvM`7!Y5JU=dmFarFb{Zpp;XAq@4BI9&C?6kX`@eVR1|4rQ}g{jh0xy`n}@gf9SD~2QW<b_qINTO^eCEyq6;zl>K_v}sNk7t'
    '3uT&lzZ`7qnydYQ&Th<2^G&4hi6<?gp<#<+Nivo7GuKR7H*ZW3FRVou;>fUkHD9V3vUqzl#M>Z#^Nsd@2Kb7IT+P+|lNM^8I)sVI6-'
    'G&O2iNcR4Y2aXTIXyc)Z5sFqspaCAIjlZRUivxSbLoD*QC(wx-'
    'XTDiF^EfDX+XrnrocO;4_DYl!?X&0t=%A9t^Ox4r_P(@RQ$3ofxC|1A!@$R6A;MBz-;bPs-vF1z2u}jr3jx*PGKvzUHMG%0JmgI>1EqosOIl~a'
    'xy~}UEZ0sDPT5sH?t#;Dy)PqY_O(I+1*@ZIQUf9?pJYhg5UV$7Z!0OKN{}ls7QPrJsWCp|cj;8RrSH)#V?0T*ElxfxAbW9g?2$<*_l%N2)ZWPQ'
    'kFnZ0V>mvWfMffc<x-'
    'ZEq(LJa1K%}0;PAE=jhsa&m!SZi(j?GvKh6CFxfd^z*HV`W&$@)?%=VV9=dgPT<Xim!fQ>h5cT#guT9e}Udsj4F!~{BVL);>tXH=|`80@DoU{j'
    'Ws=<U06kO0Hzj?E+>6OYikJ;=j1s;*+@T9sR=Gm7L)z5r98&)n+zo(>-'
    '#fYmF7VRM3@ZV&n>)!|G;RH>uCDIHVeZKit7lhdd?@=dRh|5i?)t)=wYoKAi-cK2BAt}e7|YGg~&@pS@N8wfUI6Ffj1)C_H~$g6oRlqPCEDhv%'
    'SmT(OgK9snJ7&CU+?nu(e7^U_BRN6Oym9Dux0P2AXm0vB?Ng87yt_QT55=Z9vyvAAjeWz3Xm5QJ?B=8@Fn<Uywgdl#v=p5%ZAZC94Uc&>Ll|)V'
    '1b-$Lz6ql-sX$uP7&k|ti>t*98zHXVj?ezflL{fNKOJJpVdJUVs&SV0Hc(d25T6izFwza;(w{*6}Ns>}6XW@E%Ix3JgCl$FG$B&YZPFuZZ`{%7'
    'FF?X)*%`(!cs6sidWR0UDi#}!YNyRe@HJecUHK$ox{mwHfzMBI6Kg#ugBjx(3)mUjAdLms%ry*;D_ivBvu>s=mrpM{DR--'
    '!iKn?XNRl53jQRy0gh)TErkFL@k`~$0Whu>SJd-cbtbVubCAJi%+p>VS|Ja7I^T9B;jK0pi7<NIG+6*8rm;d)S6GS!k{m6b(FP0waGNz~shC{m'
    'IdsSavWtB5N=ysNZvq_7|J#w<MBH=M;wW0K9<B3mX-7zIA%YOBPTk_?Ac*?eh2Uo|I1O+K5FjH&?CET?j9O-'
    '|F~b2`tZ?zG65<WgHWFRfuB1JYW3PR2M+D?Sx8B>RDND;}C3f7Cl<WY73dyPe*Np`JKB7q!@7`*hsxpY=L&ogeZgvI;(ZC=0mP<PsH)+s8XKqa'
    '}AtxES=41?}&Dw~8yWRG2$D;uj?0dlsi{r;MDcPg`Vv0nS^aL-d^D_M<Pj<V{B&-'
    '@9}Q8{Rm}<r@L(a@=`&*8Qc!GNZCkiy^tLNoi5JN&j+2Yhj!f)mkq%bjT}!1=NF=lx+h5#F^q3fjh5Sp3ibjlXEuahF-'
    'tqo^>+{6B=jhEOr`7(K>O=(6Gr)TE5G!9kH>R9=MFjs*EB~ZHkG=-x$6lMT-jz+r?!rn%!P&@GJfM#=KHxR!X(6`a`tbJdWRS#&`SER&z2@XYd'
    '~~>uDN_^zm0j3`$EM_{)%-'
    '6!8Kz&z6BGMgE3mW2V#>ba!EwS7S)OVL5EYEyR#0YYj%cuxKN3ZVjuJ<5FskkjH<e?5u2B0j!YwY{ir5FQLUR@>?t*)t+^-'
    'ySC@nZD6n0h+9CJ07KsRE_&DQJtQgT@67>~tyv%|bq)1S2A3^a5<D62Y?ZcDC8!|@GIq!`F*VD^Hn~q_ZLN?6II&7CYC;^wRj@hhC#x3!elI&U'
    '<w|7!%ILa<;I!UaKd9bX8AY~au2<oV#Ax<bJj}2NM{(t>X6yS(ZUXM=Gp$jqxyzui_Gh&ocd*TC2)%3*#Xzjs<lHaregPF03(WbQNn1{Lx~}dm'
    '-*d=eeosKcEYWJNbWEqUzPB(Xn6<Xu07McdIp3w>{mAI!dgz@U`AI_p9+e7x3%x+28xUKV4jn~Qgvr8hpeX)JnbR50YbRK_QMi|QX@$&dwf<Ic'
    'SHe*I)r)slBW-'
    'd}RYH!{Wj}wi=<bMkOe)5d&rPmQJot&~;yno~^<QyibWjuk3>HgamSJJOXr1W!Wr9zNKU+$is8!fC#huS@RrZ$|o&&8~Wgt}r_wrgYpJL!$C-'
    '~}MMt4}p7|XJ9c*_FD9#+Q+yYwhlTlJa*zh{fC_ju_73(+kSEE%hvSN<Jv=9(ue4tXkj^ga!Vxpz0AQ?(XgsK(IPZV%lsWJ~pKh%s)jVN@bat`'
    ')1kunM3qfOj+=#G&MT#RrMlNxiTje<Eg)K65%Eg9wHYG}dfSlu14<Ibc5L?eIq8wZgDc8LVU3wLcN+2?Kn%aXi@;;C8^39pGi38+Q&y47*IK-j'
    'SirqA(t<0Qd*QT;MD=OQ;G{!CfP?xRYGo0N2>}LN4*PKtqZgP@DW~0gYut3pVS>n%lt_XdfvA&@jvdm|MPN5pgQ9!H;6gp0e~k-'
    '_cTqZ|kf#=$}}BRr!%u`&2&yS+w7PMJ;)CEMDz5;1{1s82WB!D=@Efz-Z)6sg&cY+&S-kP|8}*VVX$Hv%s%(X{J7miZ}yj*gNY-'
    'wa)JQo8>LONp6!sx!w0GdjYt|HXk4|9XG*Z>ijzC^v9@{Tr|(R?N}$FN+53t%e-p8bVm5ET9E=BKrK!~?Bz~+tpPEKk!s)*?dmB-'
    'B_H+#`6Ap?l?3v|xTh-eC=D_~hE=C9gM9hX4^wbrwA+K;V8kz1oper{m%Yi`hw)1pp5;9)Vl9=ot~bz%^GUu2MueU;&uSQsW89g1PPE`ufoH;Q'
    'C<0Y40#z>uiVu1&G=-'
    '@P0XBP=ofzCtnsFnIBF+Dr5ij3N!R@XshDARrZ%c!!7l5jl1eF;U<EWGcs0>TtbjnQbICWt%L=*oZQ~Qscs87fYPs9jM$^_dmKuqgOX66;lS@G'
    'XLXXdQ(`Ar^+CCnvd1Rxmg`xzJqT<uO<)#5^G`sR%RU+JEWdNm<TwMU_0>8j1UOs95quF0<EjIXBKmroiR2A~nr4N89#%p7WfR6bC@oja+Mz_)'
    'aaMDML1t=iqGYNhl2LAo5pOz3OhqbMz*#cv{GWp@V8jhFj-R^OoweNaO|3-'
    'v=M*(K*~y|X5u25<tNG)F&A&%pFU{Y6)x*F8I*P>CJ=rm}==2ud&Y*K$}aVCz~O4+LNaxxjAcLo%5b<SM{ouz<ORyQ<uLi}wK-pxAl>1wHh+Nr'
    'tv#0OlHL{2}Erdl|61WY&g`DRECWz*NIY?-_-'
    '0%vr+i3mfgyWfu(X+Gp&2PJ#O8SjS73ItBf?0FY8d3yQLyoZ%j=0Z^uZ8O%oqouu;MC?(8*Mwl(u3?=zo|D4AfrbBU@4I?x@r1Q$y97`q)v51&'
    '3N;CjzS`!<AMap%FAH(#wPw9#NSz4g7+DOidndvGasLt8hCPc$g3QS?MxZG^ol5uE5JAba%>c@?`b#1TQ<vrim5`fZs_ZMI{($2+Y_oZaFhBx*'
    'cgB(H`JWik#+|cf=AAE`T=*BQZ0*bM8K76T6J(`TSH<(3+b}i;U9lot>JnM>Z6C^@+kYpCIs7XMe(OIj~sA52(gPom(8Z-pE@8>X2-'
    '|8zJR52Qiwi4LV_1s#Anp(3PJDB<Q(p>SdY8@MzGgrdCZHeQnDh3dGwOv!kRgA^6C4R4~*6V6ri=PwOu89`)T9y7_J+<1(o#)hPz@M$^G^kE}t'
    '2zf&`jf4*#O>jnTKm=dt86Vnh<Lw_rD@#_MPPIbV~@cqVe@EU{&IJ{3D!%Po15U;o{6Alk-'
    'J>NoD*=8sTWd!7fNJ*P4Qyo=weJ1!Hm8IVY_E0({Z&?+p^1t)yAu8<F&cV`ng)G?$_bZmeuM<Rru35+!9Bqb+~<FjYA^HalvS+f>(EVBPn7`Md'
    'CMk(|ed)vrEFJ5=?#p->TQG=T`kyW~DF(C(-R-HkY^deF(3w5Hl7k78zwUxDW~)-)~-#YewL#DWs3pdpU{&1#wtQKMa>n7)pDRRutTm>f|$>&-'
    'TP(vy0CFM>LY!4qQl=*(jK))*}-tGul-dIflK-g!ZW^I_S<*t)d21KN$|AcK<`6+U@QXN2G|m$*$lR=p{uEOnYX{^?G?PgAF))W*8HoeX75r_-'
    'nOqZ@-i7gN;a<KDk~}?_nyEtiT!kR#!B(8n8H@qMl<1tz{e(CsiXcBSZ_0{VM&DS~!rvF%3eBJ;VsLMn-'
    'L&O^FY?ClyWnrJZV)ON|3TZrT`MK|2x{bxB%7x);O2XwvLY-pHmGD8==Ct5UnGo$TPD1f49!s^4Ei%UP}A;e5DzWe2f&Lnjclg1De>fx>8cWVl'
    '^9EbQ2vCIg{Is@a}(;^RDr3Sif;L6@|}jdu;}6wUS^Lb1RO%)s2jqmp~l`1jE7fW<09KayKFbapo$wZ*$}D8P}TdClTuawISknK&zf|3&D{*gz'
    'FikB&rk7lC~*fRVw<1U)~xMWq$+N#^{TjNtvZNLTBpch)ielH+D9l7I}C-'
    'ZkjF^G^~RK;a$hg(b(2CFVOllNq{JrIbK9;Ys8*Bh>Oj=Exs2ujA7&3QDaM$zhn}2%5Wy<SuE_Vd<FfMkK}o=TfkSVOb!~qD)$-^82ukz}G#-'
    's<g8p;Ka39C^}rX@H`VW9N@m#gm_67gRu00qW9XfPByf)cxW4$p_S+NkNL7y9`DbJAiy`8iJwB_b&N*6_PgT2ScS0(;Bn?eTp^89H^GOBjBqGo'
    'Z<)@Bv+E(_QHm5JdCAk}RO}u0&Z<0*@pvaPIw(u(_8v94@s9*b@s1|QXefp*u{m+Kq*`Lj5ax>T9LFz2p=#2zf41t@8*+Eg-'
    'o{C)$|FmYPxMMO7%$!|s*Q2U7GZD9ONlf!DI*3h4s&t8g2hw0Cga@>gxx?30=mx#X9l*N1#0bCW_Hp+^A(74i(TOe5q@Z2J0zc(GKnCV4r#fol'
    '{0s3p$KZ{re-x&W=X<ovL2Zh%pi!<6C&gJq6qX;s%4d{r=8;2a5mKGl;VT_ZF4tpxZiFf*!d2$#A}-'
    'EX<6Bgp;+(bFkKR$O8onURo}7x$+&I(EW`d<DA*3Lc>KIe+-?AhU(JWB`VDabnV+wjkAOJI&C8|;@)X#&Qp8bej@-'
    '930hKW6ioUG82B&uO<%<wMD3=>D+=>^1x$hD4crd_GqWEA8R-XH&uypzR8Q-'
    '4i`jWb;@tE$Ypi1<}SYfNHB<y%Z+`6Vq*Y^|QibOZB8#}^_nqiVSVxfN^-9r%CYjPif`~7ei8`|CsF~Bc#vLRq-'
    'T3{txy@bGBqgb*RaWR2%!eE48XL(IJOPDAvZ=Z4Bo*B}Ygl@x{f$AIz{~_kq!+eLBiZ3Z!8&rzG3W{zhNIp~7X%E%Dj`$r5ff}v^Fg?IlNB(AV'
    '`j=N6<CjVJSR~5QUNgj?>!4-'
    'NH%x)UJ==vHTp>6+k{p(Hnd2s>BD<)urwT{xUozczj0WcCH6ovIo^3G>VkaF~!BE9oFa^p@JYNy)uO<D#Zev!`uzE%XUb1k#XTr0w8Nn!AZD5g'
    '2QYCOGlWwnb(Hu^Dozn^DWf9M}O!W`llgYWXa-$R*NApwUn-6Yu)26+BWb9^q`O>oIForfd$L>-'
    'zX~tzX;|s}3lR5Glle)6t(~LimtJ%<TCJkA)UvT_k9brp1qccVdO?{TO)mV|AtbJ*9It2?c<!Uy9Rjk7DNU<taih#UdgB3))Xs|nkDT!^C?kTH'
    '@CNM0bF`Ias)fKEa2Z;kI<6BgnJ{{D=>-`3!#s`VV_HjO<I<9?Lmi4l3>OUASZ5jB{yk2G0LXF;-'
    'f1|HCpK}@gV?o63o#GpRdSHfd*#b3W6!vB4-'
    'Z|XnF|2`L>vVtZ^rolXUaxW>+}8>rsEB5Ph#B*X8*b>{+S0vdLJse;fxdj>*m#U}b#FD+cW;>MCi4qsJN7(0yRu0_hi;@HH`qL7Vcn~sKu0wFx'
    'W^|zB%M6MOVO|-'
    ';l&=d)vs>f;0l4aac;2{nC#3q9hM=C5D&t6ZP`~o&pIOe8av!uJw+v&j3uaC+hKQs531HlcRcJhKQgHWQ&mt7hMg>tfUd$)ZX^eOxPNoz`^F|t'
    '2Yt}2FX*~4CYaM{-)RSSg~hQ+w&%#)8u2-'
    '~TzpO=CNPxdF_X+=AgQ;Y7Zn*32}*N@u{(#e<We)A_^2r>q(JeNG_Zr|!`?m(VR(yAOCHfNL7YVJm8K0(qs!7eCIotHe~bH=rn`ju?o+do(n&!'
    'qvA`5qZ^;75sEPV%C0TitcBp<h44iBCPWVy#9wrd%deOu`ab_+|aR#SfVGCL{Mx<(uCnGS#`oF*ma?&A9WZLX?&-'
    '!eJCOE(<;dpZe3kIyHR2tWbAAz~N-H@k6aBBMRKX%*_e8osfJ5{h~6S;oPXK=aCH5|g@#5#G3eli@&b+(vMlaGDOJefUsQTLV}GRv1f-bATA-'
    'B3S%g6}`&1jqgfb{TG>Eo}C@(pn1_1pu$X>{F9CY!8MXF&EL<>8~ZKrfHq6UBX6I91AmnR<l7VvQZ~k;*Hwfajllgu2J$9j&j?QUs=!sV9`mWr'
    'YML;YY~EpM7HM1%HD5n!h5!FD@viSFBHOS14080D>eBX8rl&bs)mT`Qjwh`d`SwyO1-Kll#Fi^t)s9VUr&rTvhv2Op0s(k-i(|@Wz;$2j<-'
    '{sIqm+0scG<ol5h_C*58#E^^+;st9fu*y%PcxhjIax6WAd2SXUp#N~3t>6|ojZs#5GX%u|b(LE?lIA`U`M_@=xde%df6s4n}nsqM|D=#s-'
    'S%c>3vm>Aajk)x7|x5dUZlm|HhUlsVPfgp3xFBuAuTban(7q(|FoB%l-w+I-'
    'Ym?K}E#C^mw7OcTk;}6JCO0SbX<S=g%Wx3!6U#fgb5_~HY#<1v!Qg_5w;BF!v1)#yB_dbbrfuduYM~t}?hK<D+k~>Eueen234hkDNe0(E^g^j#'
    '=d?T+48##J>BS(de9Ba8lcSiScR7|l{wu%d8z@MGv_BShOE6u;Y4l$3mC7qFBiOfyUd}oP$JhIl6Vemg2j?o_u|Fi&liXz!aUiw2IC54z02TWI'
    '>Knc<U&<k7{MzYWt07wONNzUj9+K4>+%D2>5XjP_IGJL{H&h6YJ1Y?{>E*r>9#39Q~(*}j)l#e^<lyFH)aTHS1Wzig@P}Ru4^21yoG=6~T6Mgs'
    'dp6gxvxStj#E^+X!E8g<{V7w$cKEfl^%ZvW!x4JZ5?+T(tJsO41zg{+bdKB`4eHj%Dy6&RMAQi9Fxxr10YC_zzP%4h+$+=N1+|Q=84s0sqMWEZ'
    '+7L&Y$ureY!Y2J*m^`Ti9k9=03Yk(!kUBc<uP;ezeyHeTlaMYc2q*GQCuL12JP%UIZYPYVpR>G%l*Cbun%B#qj1dlwMYsa%gTxMO55_WGq+j7E'
    'x-'
    '#EeCwt#{9|M`Cnn4csI_oU|DGfvtxTD5H^EA8gRbM;w)thl)BO}f+Z`QSslIqvKjDYO4@6qM;yGQeHB`TE0~&v;X&g8)}H*{D(_qkpN?!`tX0M'
    'il#!juiEqHWdNiFGgeQ)DJE&gFFjqRpH)mN+v$~j`cj*?akWFG>H<znYqk;)9n7XjSpJdKW-'
    ';SVm%Bl>qN6Rk;CQdce7GZ_HJ{wv~o7!Okm{by9FC!>V1Dh!o(lq<?grd<;|Ef;{*G)gRb4^y;;7qPskHbIC!NJE^RY&2fuWtqfW2W9Q8Y+tQu'
    'mTpOghF@bI`;ot>t%p1EmZ2mMKBJlUrGwhtCV7(Gerrlhn57{sv!p8|=CZohlhyy$F$!3Q^R@SaheX5k6&7*7VH&UE;3)V%1POwT*L6N&^l-'
    'Ucrwwukq?=Wd*WAQ!nGaux#rt25a|elQ3+UqQFPW5NVpX|yV77wSi?aoJ{hUd`A~oVz{ON(_fc6U*Ja%Yv?JKtBYnZ{K-osF|F9O(UgIL`ts?-'
    'SM<@cD7Swda{nhy43FbtEC%Z8umiDT$BD#j?1@s%1qy#eerN+YOyx0CAFf|=-;P1wDI*l`(pswbG|yu_Kh?9@}yu{RENGh_XFE|dhqANr-ylA-'
    '+d3T6bNE#u-'
    'i;qC!7WD8bz}_gR67}i;l~?C#i5myr%VhMIQ7Tyc7q#?>Key*qoenil|Ntm?WX7QjtW;p9iJdEzkF*z<o1OLmFM&ldp&o%?DXd*sFR}O7gSlLR'
    '&HoulU@@>k?3CG3Gaq=>7zrVpDP12^GeUsVp5Y3hp~gci~>Sz*YB1xH2P`=6}Zgq(Y!2e$pAY!7P|en;5kEZN^tMSJtODS&`A~y98gCPQcad<y'
    'm{c7txf^{-WUA@ta+|_@Y%lek-'
    'M1Y5VSqYo2lcPrIY>B&D*XiI7!EzCD)gNb>3amMVy3U!+)4oU7x_Kvp8dGa9bk$(*&foBheO16I#S7(Z|FKB5T8FL2uI!jF?T-'
    '+@ijr+UzO8avt<A2s_wzsW0h-'
    'aR{)N<DH^^%!n3#EA*3*Esv+<2ShG<?uov8Y7{0gj4(YkEH%o?58M7{bQy;V;hm2F)TF%>V~l1Wi$Ozv1|hP$B*+<P(otv(zMVUvyZV+VxxNJ('
    'eycQ{_>RcIYEa*4pUqKL+KpSXksrTj2DkLrr6D}0I#e^mIH?QSBJ7{uqg8tchA|g=1G$l9?{dy*Bk%V+u_DW65&AgcY45XKw3_x6owhU#?7Deb'
    'O#JLgMC2N0e6n=<u7(Hr7VhbIbLRA76sZ|n_Nx?qqGVk10FfyW*KD@xfy6M@h3P0NC!TIGBEP)J1jCE_2~a#NCKe^wkZ1?%IhNOo84=oRyeshz'
    'mUdh9QmG8LE37ML^Ez0`m{HalNSYYyLfqi@vOuKP?m6PNGCp<;rO9D=jf^Gh_t*&URBt7+&8?_=s6j+OEwEs7R*`*sFgwS7^FC)rNfI%?anU)='
    'C+PQG;N=E+CNu`Z>!`aD*mPqQz)Ftr?F$u#L~2Wl(<DE$|vTxtOHKk2Qp7U%cGiDoiK$_KBbkmw(TXQwKAG&>6A5GIcS%hX7!t#Z+tl4Jh>{MQ'
    '^lISQKxzGar$$A@L?>W_K0@bS-{CoIajL3sw9uo;N(L>!vY}Lr(ibnAMXs7YivD&NZi=VF^lbCI9Qa|g6wHz0-'
    '@jlQZg)+lPZqu?)%hst5K@Q6?A(e8EE-if70EX1^W%FOC8pl{Em8j-'
    'y{PG<k~deRFNPm$D88j4myIdM0jk5_RW<vtkJTA6AD8&@lV}I*Kwss(0Lu<=I)Axvkt4)VVV8QA|6;`p}4IwJ2*uUS$LnqG2zTtdhAN#cs?w`?'
    '`B=t=E}aqQl%QCz0t}O0;FBh@70NHaz1U^W!Ym=<C2l*y`StozIc(Fq&YWJSK<S!*bl~Nz{l3}Gs(G)d0tWkV7#f@P3J`WG3#IXi50Yd`pG)X`'
    'lV>IXKVHalL64H<lo0#1)U#P$P5W%ZLv~pxmx^C&cA{1L1QH!>e>lH6saz5eJY*_3dJ#DI-'
    '|OBO|4Q^$PmX=8B*nTu(LP_Bl|IU6isX1M8VmI9zQiJ`NQxl)ocl7xmg<=NCjIoyFK9i$@EmjFv>kH7PVlGH{B&nqKLA^kTYOm-'
    '>6hB<;Id%;lt>b%UC;lvm!ooe{>GQOoSi9+}ZB*F69`JA{q1jw1Y28XM5mAu<9Ip5|HY&coL8@zdZ8jl4sY{EiahbQ(1}ii_kyZVk|9~EX^IL('
    'ARFTQU@Y?EyECVCC%I~Us|nnu4xuci3KZqW3@yaRf-VBQ|<9|yL&R66Be(2Mz~Uq_02tiwwG!!Bo5+g1Mj?-'
    '%(Hv1FfdM?1=(oq!@oyW>xjbL*Gqb*$mKH5G8rcw6|Q=I_v{HgiWKTo_RkytmMr}nI|LeX3cchb%_$W=fJBX?E4llG`B`;MN{Oyk$eqbkTneiV'
    '<KZ#hFBNZF)G<EuYj>?vy19IuT3yg$R#=}^3(MT0jM1U`55VU2@wSec#C^VIe5N7}BJ(lD8?p>7)^KvcG&O)nseYDa^as*JOOE>MV`MHpF}9ge'
    '-`J4@CIKj`4(6B+c}gUjE3rl)_WP^3TSl_{q|*V=3~1+7rxtK?1+PqVFuQ3tmV{Wsb_yr<0%}Z}XKYKi+aC0-7g7XcDd;#BwbF&r`M5KgbVMZ-'
    'A?^ax2HU>13GKOW0p57+d=Ow@ER{l<Z6x)wN^?%7B_&5-UF9gT{pXaUz8>5U%7qe>6j|^U?2{JA=e@gx!h(1Cb)Uv(pu)l1t)Sf-'
    'q3wU(4w7%L_Ta&X=X=T@`z$p}VV<XGsfC16rd`X?YK=R91^0|-'
    's<9C3=?N;kZrSirz1k`SL^{eq>^kzBew+9SweKvOY~!Y%AEa1xI3+4Mk%S`=0l={{c$`Uh!xE4x#N?7%1ix5mY{dXEeUVEC_M28MA>AQSIqA@f'
    'ua(N+aCjPHQV!E0El{))y-'
    'KSRTEnsw1o<!^OjvgdMZ$balJp;=OT9_*LZ`K@IBYME%Bkq1BFhKTOXy#q|6+s)u#?q*6A#mx@&}@blt;S3Fk1ShAT@S!FNNxH{jK!iAL}qKrA'
    'd{7s>i-8b15p2;h-viDjOzik&>p(!<d#=`C?j%%3hQ9N2T$qOVO}J;lIm~-^ZO^r#<PMynTRw%P{Q?rEh|}tR*c-'
    'J;gXvI3|PO#0@e1ynF4UpHVY#Jlo`Cq;Dp^OZRpQ-'
    ';MEy?xcO*?VlCWNfg{3x;6_Y>5cEK?DY`LM`8NdFog0~Fr5r|yE6Bd#CLEyX$`u)&PlvmuEnv4Scn1#r6!3=@*$*mY)bP){`J+od%xrkD>_w|3'
    '4I_x9PZ@hPmBler_A<0!C$arYTOK9g!$2GH7Ao^hiwKlN1c9?TtF5Vw(IS=9xE@`9g}^s`yL~m+C4vv*d&BW8Cvh($D*P;$30tKMO^s-'
    '&@ks8k^nLeBdj&Fm2I<a%v%{u%D#P-v2UNqa6ZleE+LCW)>zrsAibkjFt{<7b;A>Xa|O*YFq-jxl0CukEl-QZPdY0a_xXBN=TzS?`Okqtu{H%D'
    ';c-'
    '62<vLN8T4AWuPyVWrylUVpEG+^WV^|e@&iZFg?C{H!!VV@omKe1fUMGi+Eob3+eM)pB7E62XRJdI{o>G`b=J0?_HacrfTfJucXU+@@Y$W`|V1C'
    '}a-gq;#v9m2Vy*Vf#?N*}<nsMPQzN9KHBvkiUdXb%cf4#g-#cqGfI8R*>E-60=k5Ek;zjPa-lFlik(}<iqH)?|pgfaBdBvWG$a%~KmSQKg$f+?'
    '^TRA5riQ!u2I384sQLi&jWKO3b;_6l%-hy8mTwF(~^$v|f6S9=qLelQmKDDj+Ut_T1=6*H^h+XP1Z35TtqvKU?Afs4sJFa-kUl8Gp*n6!&d+wr'
    'tBe|zJ27SacubBAs8M-1$Rqt6%5)m30RKNz;vK$Tc%t{`l^)8m&a-'
    's4NGm05N(MVnmB$i{fj6dm)+u~zMEUe>M*Un>2e#0f@~e<i+a<g5V<pLXLjDF%H8b!00cK+bJ%zI51CCuAW^G?b~(k!PAh9GUU6M?kH{bmaJJ%'
    'sS00&^4!aHXv6Txg4sM!#)L7?LiLoR99ISa4K-'
    '|q=n9T;l1_@Er(|`cdfI<lVGRG3Zt0})hx?bv#iZ77*@6HQ%zI3Y9b6<29t$FHw@)h6;w7@fcGUjgG|Ra{$@G<V7n1Wfu8Gq0fp*og?8N%vr4*'
    'ioFvf8&5V|D2~T#kNGD^RU|}Pmiq;jJ`L<45my^k$uR4UMXb{U~F2AcHds_(??pB!wm^%3Y=yYnTZ6W6jHnU9wV<s)}!!}rC?ap|tD_3mB>GEa'
    'h@A;u+G452LFxv;v+}kV6t)VRHhLuNCl&h1_RnP>4Oke?I__U}P1)c_6p+>`m4<3ueElZa~GuR1eN|q*V8baZ4`l<d|gO^UBRaB7d&XpRFt>g~'
    'lgU1)0<eBa>@wv5D$wf^!2}Z^V0Q2fH<c83Avs&4~JrhVy0RINj3`E=Wtc=iiM<?KuY@g}U17I9}tBYh8Yn>dOI0jpdgeis1?>{B=+4Sn=y74{'
    '4OhNtJz>T`PWv!soZl`ym4R^2R70QEg()`$Njyi?B2P*myj{pLmLB?Ost<mm#RKYnPThPf6q@|QD?HZW{3dC9Gw;bvJk*7~2Pjy18_di1G4;Na'
    'yC8gFj$YSSW74`?cCtkTZz7CvSVET}Z?cVNtJ{sB?uLBl1b0>5co-'
    '<eEL6VOAK|*0WhGJ`b`)bOOf9Pys=oqKW?=wJ2XUOPyKwrLPJVrxy*Fk6IWcGhcp7`j~+L=#VGP}V)W{-'
    'Z%o5Mfqx1^MWt|n_LwkoT#;V1W5PET#VF(IK4X?EF6@vXS&n4y)?STqn&XLt!W4(M;+k2;G*1$+B^r>xw5+9hie+{2PG_OGKW-'
    '(5QMfhRoJ9y%elm$<(NAs)Xiy{%H=M3-yaAQ5-'
    'A$K;5da<6*QF<PLX77S3k6>kCP_V_U~C{LmFh`~w%27DL3EnY#Mj<th(iqatA{3Psr)&&Y(G`l^#NsRygHz3rR`_;Li`>NlCTI%dK6awqudr65'
    'ufSNdG2f_EDDO<=@LKSq8=_C>&p&paMwz;O%?4L~AJ@~a17NrfOVll--)qW3dff4NBU_*Vp-!GyH3E2z4cAo3^V81<xmfQykwa+&OUo-NjBEJe'
    'Lb!EoMA_ucv=P6Mq?LhV3sy)+eUTg(NIL{77EWn5qe*m6!;47tE8OTf&G<p9{>>ZJ>%S)@VQ)bTuOzFQwR!HoE6mk}es%0->_Es^h(A;-'
    'IEO6y4eaz49TlfAZN4CH?_AW=ALZk8V!fGM0_%P-RPL1!iFYzr;B6a%2zvx{B%i?!s;}`-'
    ')5iG+mCxc6jw<R+Sc^^K2L(mV!4J{rBXL)bIb3_^1!FJx7HPS%=aA5cmU1dR;E}?zTkH(INBMlm-'
    'f7hgQv~0ADZ35&gtYmgL5gT=}X%?%PrM5+$W*R?ijGkudK4g6O_2K^t19SpJk_5@mo_~9O@nFsB=}35f@efYD|MCJnb2la{(VMMquZu3Tqs}j#'
    '{$%{7P#^8~&$dzqf5$E0<oa*mY(lnwO8K1U){M@JEvD16OK_IUgn9^CpAOVD-'
    's6K3c7(;;fNB97hL#;TAaZa+HXtivzGtCt1HMQ{X5+AaX)SH<3vT9qg$0G(WWEYq=Nk8CU(Rqd8juVld+F?AGuHLe4sZ4zcM_hO6!FDy;j2<|0'
    '<q%&XfxijqZ!27MT8zXkHp>-'
    'zYHrH;ilPBY_AHx+N{N}(Qi0zrTU7PdhhhkEP0|c8wT%NafV*KJU8^DHElOx(!$(r4q52F>G{PNab==6FTpc~gQg^WNl566=C7mx;{MTCn|e<K'
    'Z2js0R$CDgVb-k|mYde<ACg2<?^~0<*Icj{{M)k}t$1)LhgB|Z|K)Lq{%)CObD-R|bdH=p1>-'
    'loncVugJjy;!WwFWH={c?O`%XY(cjm4s{@M^^$vWDyQKL1I)3$y^R&VVkrAsZyc`*xfFd@~9sZ9L3gW%PVPT2QFJF1VI{vzKGvaek?L<c)&KU6'
    'eHYcerh4{`{go~vAjPRf~56TnmQ+{=SninQN~f;K8Ke6?iE_$<zRFN`R<7)vg|P(|<2?ZbOzl1a%RW4$-'
    'c>~Ei$&Xu=L9VNF1vi8)TQDAu1D2qK9J4%u(S5iLhF{@bs9<^D@TJPMgK@h_<m^n8-x(<X=c*TQi(g96|48@3$D@hqO@-'
    '9+n*x_wq@K<A1z4vQ3AqFLp4#@Lg%s!KYYg~tSml|L?u_UU@UE_<J2206b`kS_E1y!@X6pJFFHw8I8gAt*keg8vXuiF@~e&8`sm25!U+M8z&5F'
    '|SP0+Tc$43rD=@r9Fz%5lP+rd|szqw%=pI*L{U^eF<>c(b^9CdH3dQ8C-3xoF8Fis3m-'
    '?#>#`=9uCQW0bWMH%Nt4VAsMt=eFt1N6s3x@cGZqeV7@`lVS5@dO1uwBf*3LB7&WCM^MB}Rf2Ic_|Pwef`tm;VBXO}I9R9v4rP2U1Vp9Et^0XK'
    '@8AEf^|LkxT~v^%ZFzfLN+Qx5;h>^(QRvKJs4*x@C3oj1nFhV=G}wX%42GK8#Axd#R0hduL>ulsm$o^;z7=UF&$uM$vh4+f0~Xz+>b)G%W&&+e'
    'h;U}%9#-|}ZlQpM8L^j+)$E^GbGp_Eu;|Wi;>Q(Ye6t($3nLdjwoBpMtwF%dt<V>c92fH-'
    ';68<gUYKkvBIME&JvjgKKUTi?m(UW9X3X(n?^y}9#!ni5#hk!z2=HG9AE*7!hl=op)Ej@|>sxKzQEuIlQrGATly$xH{|aOQTEq@`!t0JUkDRX#'
    '(1-F$(Aa_a-czvCO>^AydI;9Bu3rRn8#405+G%Ra_eruBx#h2Kvvp-'
    '3Jxyi#bJDXIj65T0cd$%SUv}kG@t%vl%lJZAmFIeP2d0*uyj)Dm!CT~BiVH(KiXY*-'
    'w33qPek<;|tca$eT7QoVX0Ipbb~ai0tEn|#(ga|oAM2eqLHS$eT&*lhZJy34E?otVaU7E*W4GDz21i-bbb#3P_IyBD4?<v{xclavx{P9%iCq-'
    '~Q6mgz$|b{5Hzfuurc&{!Vjn@N4*zvy&jZ_wFwSV-'
    '{^~Bs;M4}(q>zv9T`clp`M7h~su9sn?A)^9(P~(C*1i?_0pMyctwrF@m4KTal7e$LV3=FCU=)OJEN5@A$KqMktjnRb`<^`<u*^NSb-'
    'h_G*-1!Mh6XCEg$mnCQnm<~WzPaXWD8Yv>w~CWZdM+wl9a#zkhQ_)1=&o%WLW>siNQJ*esR}pS_-WY11^Hl#u^y@8e}^l<1u<U@B?Ngl(^rMZz'
    'P5obLXx6Ch%{SXF%+&9GDN*LI+R`C8t3QbSfg5&Xgdg{4@fzp(TtRTWg#pDFfF)6}sy&BiCaY7+uz;g~+-A(uEeN0sIElOD4LiT$6DBhB^b-'
    'T9FUbhXG#V397nY#k1rmcH|yEzc)KbOWQp)`9>yEOY0O4RKq*5^!=sPkQ`_HW&GhsC6b*`Vim?Wc;`wA=o`Zq)%u8cy2Ws@&F=W=Cu=`>k~1Ib'
    'Pcx7YU?g0e(;9El^cwe0QJM8FtBhh5{O5($*s=ZzFv=9vM&8QQuJhWNk}=Lu7K=WIdH+J?Xt@hX@t?A5bQTSkZb*L;5QEw-'
    'E}wY>Qd}vGhOVSW!_S^D6+3(>)~1Q^Qf6k#Qad&bLIo$r|3T}=vqy}>cN~LaY8#KJzikoWm}?zB<Y*nr3I_|K<p=J<#i$LTSXx28F3<{tDew8-'
    'F1M^0>`+<RR9z0mwh*b(7dOlVIefIZ(%pNg6$ze_`|buOk-RGwrP|DD>bs9>T2-'
    'ITw*t1goSaLlEkx>LyIs(&<X+$I?%RjTq3j~}I9jXg{G<ApMnp@)vXcIxJg@~H<nqE6Q!h&_BV>JF6UKP);t7|m)UuRFUXATtPaC|ohfdO^9Y$'
    'i;e$3<E)e7fp{bAFz3<7VTX35u?oHg@x!<;WAW@S0T=3LDzJFRn4DUu*Z2hB|w`71e46kAjc7w(>Tbu2pxi&nfXh5PTbifyxEJ@KNv3p(g~mB7'
    '32WV7w*SE3xI{0CfJwp~RYzgnnW1d~vw{7ZPf$c$GE$-JWcF6+lX0q$kj5UIm;eTSc<Gk>5kR~q7^sqZ{g9sE{)w^7|nE#7T>plt-'
    'z__is2+2Hm%?yC5K9k|PTw%aILlQtCR8}$6J+$e+v1tuUA#PhV3h=iW(Xk%6d<0*G$z4`4~{yLLmf&KOnk0+xIT-'
    'pdTHd{i@KeTm~akIW>j|&b}Qg-GZ!<tQ|q)fsfXHL{-'
    '4+_^OEYFLkJoN+snAE#<;|?e<Rp3*ST@)WR_$Hovk|EYF#id*iwxGE}7R~*E7*v+}|B$-'
    '^+ik#<pCcLmD&dfjyH=N$aobpN`(;MRxEHzqusz5WrS?l{xke-!+ar-XaE;<2(@xU*Q;f&qqsHU#Nyg*wapQ6D#N%=Bh$*CMi0Kh)C<kZiY$#4'
    '#SK4+jBbPI{9i(wP{NA|LxA5f-'
    'k4+0j$nq`lTN@gM^!5htOjWe8WSOVKi<D|84<BAc=EZUjI=QdLZvAcfR8!sg_I%6R38hHEB1HIe)>xd~UK3THva~#(J7JuiLPC(f$LRFC?VtP2'
    'i%!*|;)-iD^R|Yn)3`BS2r&8c+_`o=$BKS-oHgDKvn+nMjIcDha4U}YRqnd~g@ceX$}kUD;ew71)dE5oyNR<hakfB;s!pD@RKDqnSi|U2o48)2'
    'JgO7?-'
    '^F++R1lcx{HQez={>|p8&C2K4@XYa4Y_~#hi)GOdmG)v$%;1OoVmi4$^c1j(b1fF?E|K#c%O0NPXgNu*O=HN5(wz;;SvB=n_s|<5!TJ>`~dfV-'
    'gv+@3CkqOE^_?mHPP!&H{MLpFL%@pc^#w})a31)^262-'
    ';Uhv>rzZmph~Q>jVE3)u|1~kv^*;YO?&eQ;so_x!SBlxvW1(Jk$|h+_rFb+Gw16wNG<-'
    '^i=~Hj7?G)apFJPVN>0m^FN@QevI9EQHGjq12I5ubY*EmtAB=I#XT%1N#T|;Q?+jzLKq%MB(8b;NVt3-'
    '7v=MT2p$1)6ZQmC=jeI|D4Yxrg5eXv6e5ao4~M5U!JH^nPraoV6pR><)tCcgjWQMCMn2?#>f0pbz<6w((6`nwacxdi26et!;V0$|EtOM8j`6$y'
    '$2H1+3qCoF5$nWs54p`G~EFp)8rKt?Jy9!o}nIg<1Do!BDS+yw7v=d+%qOXFkf9`gq`K1=S<lo2?@sC7gZW9$MlaN?MO&~S_B*_|`Kjq74~M58'
    'IA<N%EEp+FS)_%`*SE<RwQxnoW%lMQp;>77tG!D<45({~aOuE_1Mw69p~=ah|>xn>CFTIO9kPbLPOw7<~u2Jm%55f1<#5Vi$c&;!|BomI-'
    'D{mx!kz{1V>yk*mL<`bd5V~+12+-'
    'f;maRcS){G*h4`zdKGA(>5f#?tUXH%~XqW!v^5908r^xKx(^ZKk#Wj_Q5ikJy!GKF4LF_k1YdEaP@>{Pn`VOA64}`e(Ur*P8|GfQx-'
    '?C|@T&45n0fU-~Md6(nB|q_30_R<ulC4?pXy)>uOMbNBlGe5kqa3zU405a<efCV~v-'
    'A8hNzJEcc&#RuwzIENXV_D4jA)M$jjUjRWPR{8uoAGU9t*%vdcOg3)mTRjhM%MKn4dMBBU@hFP8bx5hyZ^k7WkJawA1to6n5Oc2q`vuM%7C_>C'
    'x-wv|=x{Ios0eBV{yydeRT8&-4=O}mm^l84Gjmrqj}Fk6rUI;v2xB*fQMJaC5e7N<1+0LR4()tSo4xK?ziREv?#OIeL}r=zr~Y#3-'
    ')`1uscSX@h!=C%kd%0qZ#X=*Zq_k-'
    'Rf#ii)+a8K!|`Sgi;s-$P+e0#$rYu4)8r9;yCuKpNpZolTma-0#Rxh{aakg~le??VCi<52oPSILn1u1EP%H^(a>jE|Q0jvl-DpOrY7h@qMp=;{'
    '5bq3aP~KwJ@|!igv*Lypnt){F!ta$IV#Gwx_d*B$V6~PrvoRhQ?xO>`P{>~1+V`Qgw&{{x4KJy9j!1>hZ&X6zkX>!@XR}S92s6sU2($s@h{P)U'
    'uy)|*egm-FPOu4g0S04-'
    '?j$i}|K<e#GmVp4O?4Mxw7*%aHnTJ==}$U$lzIxL;Holp8yS357AuCZpMj7tVR7w)RPBUI%hW!6lTOk3VAidOnmfP*Z*e5wLlbn57kHQ4O%Mb!'
    'uL&(>@A7;Y|D^GdKExE3-Vx2>XHJFqne&54+u3xNSe=rr0H1F{3cMB4PbIA)y|I48Tey?UaeX=*_ovPN$Bd!}8u>-'
    '1Kf&*Bb80t7&ECgxcWkad`nR0=<6fsTG}ayWhB<XlN1e{Ub&Qoya~p15j{3%`tx-R>-'
    'NAU$0%bO*>6W68iuX)Wj#I7TMk*V&TqEGvvRNrf!OvSrQs?k#-1<BO1qaHOnk@SmTVQ0^kyI7|>4$epPctaQ-'
    '4GQ?Uy8M;09vJ{YCC3b`gt_YC#{l1R;06qwFJ{a-(m{(I8e8eN)~1NItsQA;UprLrL{3Mo+S-'
    'uO~;vXniE_z>e`4k^hG_GC4|y}w+?eXF6d686nQV><0VDkQ%+yk%;ghf@Od%SIA{LLX0=W!xbEj2>!+Wvvs-'
    'O)KP`GE{ycE~mJ<Z`LwEKC!&a5UG93&I_`uxpoLQPXDMf@we(=H4tJ7#Yp|&CO<l{%cJ2}bMGhq#L`=_DY6Lzz(BXXeklflWTJJ_aYsra07zv5'
    '}m%>gClY^9Q!ZtvLz^Buf8yt9)NVKX=Qmp&yx);Lj5%d~hiYzl*dY9bVB;`4=y*H>XUD`SY0yl|8G@tbkS6E|LxNOqd&<YmJ)KO$Un=Jd!MO)|'
    '5!Q5c~*4M+(!SEh4?;pi0bJS3et0$sNBKWY@ZET&sUqBB(guF>eWiG%qM6hQ8gq0UX=<c@J7O&oi6gQ0uP2Mo9?y3J~m5ykChzdx8vd!6Qpr=e'
    'mcQ&BO00CajVm<%WTYUvPOMGKNhK*A!ylxRKGEDxwm@rzjt1SjiTAoSPXsM9?8IQ_Xl_%KcZ)U>TMoSGC$K6vH|5mw@eJn;m$#2f3W5L{=DzjC'
    '7BJ_)3#OcntlH5oLw=+hDGMz$NWQ`m_eESxA4%1iu*$fpa7K1lpsloZtHk66&_M8}X35(wzp;=U%%YK@mlb_%uM3``cH#{h5I`S*>zEDU7KY0o'
    'm3B(zuBVV;o1c;~i2NjMA*Tx^z+yA^y9PcOL$BsVi1pASB?o8ykYIZW4!2yWjj8=0PO&ok2`dtRz7CYy{D*qomSIOwDE6&eOLPIlH4teZA=r27'
    'G?m2>JYm#nd&d*>|Ku~o&bTEp(Io!<1c+v`<o!uCcKFGGjBJ+*v{T6%VUSE+#seRptLwOVJ>VQ(^-'
    'c26qxeYw`qUOG`k(s1zA32yyhIY+#&Ffj>z!qlNVDue@grU%4(de9mU9}DqN2QjUlk%K0WH_I-'
    'AiP2zczkDqt-Z7cUC50O-?d&3)%xnMpI&`A=ab>&SfWIn=TbNdga0FWmuHCWm8#%M6Qm<O|gR0fohkuW%7W~;y4wQ=2!+Iv-Twa`$c)Q{U&31('
    '{!*u8M2|bG(;`HHFih{Z&;hK~og2~aG&*Ko$e5hGq+LUZ`QnJzLruN__Qo!}IG6h|kqxGE>h=irsh8sIHYdfT8FWrUrEBjhG9pJ|2MYGqdS_`3'
    '&PdTnt>)<#A7<wd092gC-9pQ)jH)np3MNx*HpahIq#X}VM6Q25B#FAU1&h)AF8Elx&uTbgd?r?fCYJSk5l|pH_iBwO_6dGwiVPJP&o^g8y>-'
    'J#y5xqIjPJh*0?s^0ZD$*du9<;tNx${Uad_*fL_`cwv+T&bGpOQ}BokZJHXJ1Dh!z5N(&aSgc<h=k2-'
    '|!fR;>Z%?{8{cCCbB!TmwVRO0rs7P+JR;9sM4b&$N;SnJdGc(UC){X_T0g9dM~0th5!M2L<c~rL-'
    '~?oeLRHeF&Q;ajKcb10!Z4}*iQEBXDF)|JzysLi3}<weI%TAwwwl!CPL#MkqQkh8M0DXK}GhR&j{cY(t7!ur?Av^^bzNupGh_#D28knqH0JvA4'
    'yT{rtfTM6Gp5><xg?7&sn#xr5m-}i0~p9T&O@}w{h>1dqr35^q>B|qrdOz?^|~s-'
    'O#Ta$6ee+lA`&1jlu+DKH?7U?BATgcjgsV%zDmh!oT}sjPO{fYW-ExD>;B4<a`<l*QPB8203LlXiirC%BuVost^wFQ+JxuUT<*l>aQyDz%c!_a'
    '`ovB81t_fLa=gAd6l3ivz^bNwg1Sl{sgFrPD05Y>M3yRzMduJ;ou{Y3<HB$weA4Oan-tK{|ExY&zPw41UwBKhm+70AJ@PH)1GsUvuv~SRDLKJe'
    'Bn`i1419&q>`;HhU+^X;e(_5P7`mM7qsfqGA@c+M;X<gwWRUMG_iNmmk{ql@~Jt+Gz}nNK+A*v-'
    'B(4=I8ST#ogM(c@1y60xs8%zGs5D3@ZcP424`P!Mt;Jv`2cW$ZpYtiY!E&lo8yvWa}wCM6e5`dQA?vBlXZKgvIOF^`4u;fUFdICAv2(vnS#F#p'
    'NK5f5TgqRe$3nxC9mDypm{Q7-D(Yfg<ri&yzBsC{5M<7!yW4Z|NXCLzgfT6fB#FjZKGe7lU{-vvXky9df~socfyX0cXI}(WCK66t-'
    '7YI`gdxpp=qm8qAk;gVJqJ9icdi#w_oe|iv6gvG}lYYc`RuZajPJ1q|LH3u^--yKxw_&0CWy0NuE`;KubFrd_ex}OeURa|MFr-'
    'z84^xvwq}r6berJgCsX<A_g@aAByhveae2fB;L=w6|*3Hlx)UeGKdon>UN~Gb=c8Y=ftE1<>4=)5S;n}%T~zxQkOcD^rN0q_wxW_R)sh!76aPQ'
    '0&Q$-'
    'x%?sBF#s;xr7}Yw=LFt{{~p}oC+}=o?xtS;4{!hP#oIh#>+dq`%IKWhxD_$aNa+7c1F!Vq@x!fvd&)s(2P)0p<o6$DeggVmc#x$YJbs8JU{AV2'
    'DZ^E6fznX(af{Q|!(;T|%WEYzxt;>$6tE(6^*6ocD|RhAIB_Dpb8OhYqp(19_`CE2`GbvHyF$gz-LAdWZq!nJ+J<Gn>YuZlwAAQlc7{e_hPLR?'
    '#6NYThxLkGQX)%!%MN0?U+6-'
    '2&RVBt<WAT42EopE>wkV6szTdoCK*j02lZ(<__>2VT^N{Z+UxYsCg<ph_qoj7iTwClsZ;V)bUiv<5cZhsUHf?GAMU=tTDlQkHqsbty7F@u-'
    'i9#A$+mv~9=!w#%GFDjYm_XvFUqC8b9JF71mSm#QOz=5ePdAfKT_hmAIdxb{Z{_SC7Y!)L;6gS)MOC7%FKwv+D_FB-'
    '!zU}SE*~NFzGqIalL!&J59YXTdbCSr5U4AD|fNT(lB*Gx>^yZ5jo37_mQ#aIbSjPG+wrTr094;dGJFf4*3(yg99-yD+L7)S-'
    '~9?e1%Y7m6QrcCaDnjzOhrpJv44+diOfNbb326CR?Zm3^4k-'
    ';*Wd=NFu<LyVA}<=HFybf<@qQngpOOj%o?T@%`$`Un=FB>$T&}Q#CR%W^&ab4J#?&U?Tol$XlgW>@z^s3Ht8b4{YyACg7H9cY4`<;wg4qc8a~;'
    'W{TBIujF;zBrCD(8i$HcHvWJYxvIr?vScBi%*C?Yfzxn7znH^+$nLqZz@iD@GE?+B?}l^C<SS^pd#lNPRc(##$zas%PcJY&N6z<C(s+c7SYbRv'
    'NzFiC6jqmFO>sCo`n$Yu73X|L>ugE_7*$YPB(LyN=OQ5+#0wi;#+UK24}YB)ZiOd5k8QTDZ?;~x*{vleNohoY3F)fUC>EQ?pYyKoU`)l%!^hy%'
    'S^Y7ipfvo)i~~dA2}Yuf_8?*c{cog8)*EG4y88ZBOWi@)rS9+v^vUyKZXkqeVGy0Ibj^bkci~1MG@8#7sjZvj5p#()G1YX)c5Nbmyt$GUA?KEy'
    '5K$fD%hbwQ%|M@wzf>(5NC*b6f1P|4^DY4d@?rNKYls4v0D7TsMK^Xtk#cU<)-`nLK`JJ7u2xMNE2Se~s3r=-'
    '#BT%Iclfi6GJuXfK(uRr6R?56ti)6wqpsI$wOZn0hm;>s7Wz_JKJYbSp{n?l=|brEQmg-L9awLY@KvlO7LKre-W*NGz2^A*t^AE55_Se-'
    'N%ctJ?Pw)s!fP>GDd_%KJipNkOXnf;y-f*dx)di+2%P_Zg11nfzEb3AVezA_#P4xg@%#D-#4n9t<w<3%0{MFgh^<V2-'
    'uSk1p?EW3ytKocEw=%FKiTo>v%$IUyNixjpGz(xaj?a$MaL5ejl2+$PpFWTq{Bnk)9+(kbI3RA(}2aTPhBNH!?1gRHQTX6TnXiDq=ob0v<0i_*'
    '{IXuiO%HLr<c9nwpJCjdlop3r`S~V`umwwnO5uCR!iGcX)BWx<YTAT8+>>WNj^Fld**kiiPG%T5k=fBe+Wt=;UMxmk|AmH>1e?34kVM1-*%b-'
    'O7rufc$-YW;<Lksu&-0s=;&^<&N|5Uqqvb;i82T$=~!}w`k{E$o(wOhp~<*4q#$|HV8EhMg525Yz7q_UYJ;L+2O-'
    '#W)|F$~o@FoTN)&~qyapneE<BnjQoF02lpz6hPwrcpaVqYmwW}S>?a*(07xYUh+}SRu4mg>sb($Wix9f^m{Szmg1@0P~6DfE?(zCiJ+geStj1}'
    'ZX@dcQQ-Zp{Ov01!5W&M+NjD|^Gxexqu*wK#l(vq&!U`z3}n*63F{<=&{=L}l5sVCVxle?W`Vo4~oQpzP8B_7zfXC`|q*S$f5FgYpo2cwH-uNe'
    'D6#Pt_Y(XU71Jf_*R&w~3j%6rU*EF6Av{Sw1C%A81H9f1m5tJGQOW%5HIn5<2!G)^ri-=4F`oKm~ng`-P?lIJ8vVzGFMN^|-'
    '0C>uhS>QH;jRgCc`<rGw^rz4pXn@#C^TyLj1un7b8<BwKxDyk&YQ(Q^(RtlM_ri4o8IScGtLW3Hc+&C+zeG~XAr&1jH<o{>y-'
    'Im)(k_EwceMPF<Mh8$qECEtoT5MHY5(G)KKmZGXVzG6&uq2Qqvjk@1WC9}5)f^kMHQTp+S(_hNn}=g(U)Saf>QClN);%tn5s?vj0YFOCM`dMI5'
    ';86x9v&X<9)8Kq1$E?2UE|<FqF)B`QxRkxC30mZ+0wKFjgUhLhuQCqPmk=;__RGb!u88pswF}Yb06#nr`OH`GgpJ!cpP12=0DJ-'
    '!!|&0&_i{hHF$#!3-!R_9i@RL6*jg9HI|7fk2uGhZ3e@jH5~N@EdZq5JR-T*-k6&10ez3g{l2zsCcvlH9!;IM8LT{?+)=Ny-'
    '|ilcfqDx9AXj(l`5OX45n%WGownU=76qb*IjjgO?D>4=VIG2#V5IcFY%-y(Dc2}B(ft$2W?GEl6)(h`Rc$<(OFPxr?(U<(@}NC9-'
    'qjaMeoD(wo<vElJt9k1%TLxDjGMT_9U)mt5*@50byoZtGUw>_#>^u~TP_qX47g#541mYHxr`RU4c^fp8F1Y@*>@%s@XToSS7IWILREeu8YZL>e'
    '5T^tbB63DgCojp(nK%gbWCb}%j6DYg2h1)EHJ+qW)eZyo9E&MUs{ThvMCz~L`s^j*k0!d85YM7c0I{@5&y|w-q<rN3I+-'
    'kO=a|?WYx>w$;gl;x_Gv|UyW6m=PY4(0edh?I(dCDBmYxYzbB_D_j;BOh={LmzL8&QBwYTaI;5u(Xy0e1(N1bF$Dt-_z7)(qq-?*;Gg-SN;odT'
    'gf^eT}%<=E!e1^lhGXc7fe+`4%Bd!zHzu%3Ybujwj2HGy@8H|!VrAn%OE}4nYDu!hm&%=afN>#%*s(^<kb((2K`fU-'
    '+<&;oZ(B=~5PK(j&%!?M7&Wa{{vVMH=CkynF5S_wquU+4A@VNZ;A9!9qVxCxWun03nIWsHZ2^7DjL!$s6?EpgNcZi_~$M*x6CUEa?I#}~HKIe;'
    'LT?7kYht?nV1DMyLZFY8c{s77!;T*K|4t@wi0&(OL*8qlREAVG4alFMfFac5=bxAT_%>w_5ES6ZJ>J0|kj(jI(W?e-'
    'sL38mTNwZ!4=`CpehI>;Ym4<xHrHDmN?<(Bfi3K7Dl;^^PX$u3;1%mM>v;{G;DUJx!3IXf34`M)QIak2nBkHmN;$27HR$4--'
    '|MA%W%OBYB+ffHXI-'
    'Q5^Cofn6`2<re!{kmaRwCJ|EcmT3w@6k_phTn(Od?H&SI3)^4CzSplpG?gMiW`+Rw9h_!wyUgzs;8sTtTz~8NsJI962>4Wi^aN=zI|b)-'
    '_<#f;$;T_hvKe5(Ie|1-Uz+zN2GGfbwGLR^%v7I|7t^%is?UMT7y!u--'
    'TU9LK%H%N&lzi)exmIuuI?4>tJI3q0s6;Xv)A<RKj7&nlM|2*?zmA#^s@`=CR-)ROs-zvyuU5Gsr+&nUSN54-xGYB&Z--t#0cg9tZgk&G;Njn<'
    '#CGVZ3?uB=Q_AaK`EUpyq0*+056z~%=qY2a9|)eKH+Kf$G=BBS8gvi6ybiwfodRHwCpZo=K)=^g6EZi1*V3$EyWyw>1<J3F)o`>p25UQ0K@-'
    '&R)+=v>X^g<E(MF@3X)Ay9XRIt;-DR(Nzqwph&&s08?IVykc{JA~5)t90*xmjJuKvlrpHymeMslneik@-'
    'QF8%qxW}dxy1tBJfK9X=Zs*v~)=tN4Ri*Su!SE|NbTLD9#0@SMD3jySZ_v9xMt#axiUv!Z-11UtXZq6$hG-gvOX^(rjq?mamz$j^gV*x!U<f&N'
    'x2Sek6+%rlR;l&KpoPQGn?HwI}h_?ka;30ftB+p$8%zdbdnwK}24d2n!66XWXKijyJ({IdLO#G_o~Tw1O)F0F7`?&wqhcP2S+-'
    '*H+}g4Rk>gR^xT#FFYTx3^V(;K#kVLav=`K7EIf-e46YTOtWvH3mn-czL5Ye^jq+~WcxiqMYM)L`_>%QJ&GHKHhT|<INr7#Q&uc`Q3`Clz<UM$'
    'eCdKBbmhz~hZ<G*c;wQ(SZQU@owAju4%)5GzRpUUnTRXyAjrrhUP0y0sIO!+;S`!mfQ@o8L*_^lml>hPB3G`&B}jG2fb!+8-'
    '4)?>*Ii^UWJvT)8ma`B0Fb)CCE)7m6$`?~TM0GE6$!L4KsPF%5K}CvF-'
    'r2?1rakGf5nPhUZ5!Xf~p6ca&J*Y=cD1F!kTOj&>tRPcXkPq325|iIN`$--`^-'
    'xxby(?oHc}8c8sNtOwm<915lJeEl=NSX<XM{M9()0k)Yq+pR}D=1K5in(+T|2Sg-'
    '%6Zo72ZWInwR*IvPBNI&q%t0HEooZ(HjDVny>cmm07o3exC%*CivQOjAqS?JW1KkTjWDX=0LtGHQ8QsL<c*f?<-'
    'lX~G_?9pg2ChlT`@vv_<G3}GVW|Pevw04}t(S9LStbt!H`FmzWY>e6sp|?Zy!8=E?BW#v%ScYfr-'
    '>LG2@*~MoJAlfo{eE&u@E18|__s0pwLQ(7=0$oIrD%$7(ui($Z%)U_p5uInVzr2&^R*m<pGW?3u6==MWTjrFO!*_pLmO-'
    '8)LB|;AQ7wlNl|yy$8V8#&NF)=f~u+4N!b{oaqBsD&}2oI2Rbj7%y1(vvJuM)*)Q3=f+bN9qun69ab^WLj0vsMa?tP`W3iTV2op|VOg6)zZ2Ko'
    '5uZ1+@Zs@yVr4&u*|H*|;@wO;jgsmtiRec@sB=8r1nHj|e<ci!D%qU~J6^I8pNmH}~V!FLIoV)JyWKL$6OkEiVv>{9)GHHaBI4M&LK6WR=@4N7'
    'KtlsjHWg>6(I=#Vo-yXah9}es@>DSXE5Fe#qI>coj8)kTjq>9LiPYtvRO!7@|mLNaM0$_qON~3a_GBOnLKR%gbvD=7U?9$Ul8G#^552idJKBSb'
    'eCbd$(kQ_9SS0_1(e9k-!D82j1v;5BH3cm511Uuk5*Z(Lku*q^o)B8(sx$%V8rsRo<iKkj;4*>*nGpFF7^U_K47-'
    'EjjBPvDoH}Yy4eW0M8?;7*M7nYZ@AQ2>rG$b()@YxW_lZ&dHEfe=CNs^z7GiLLoAvB|)<3)=sfvKi<wGyumB25iXj*soZ8JAGe96y~}!jlZ%(S'
    'i+0E5~A72MNVTp-d~b%IW$+aT26B;GZYmk&?SV?LQzsE8Y-Mj-'
    'V4*h6j>R5@P~G)=5eMorw91^6dC)>I&W>g0ZMTN@U$l&8WCs$cFKI#auX~Z+`(1XRQjpU?Fx;Uv~e6yiEW%gG;#)KfzU>7%^BsFBJ~7b=so|V-'
    'wQj#_M=_zI#i}TOeQFc#BP!qP$MigK193we9uB)}&;`XxbsKKR1pyW6O?`63%UZ&si*HZr}UprmL_Kw?G)6O|0`72PAo>M><5im-'
    '_s^?WN)~LY8v2?fJ->BpG<yGf?-Rx+-XifiJ8B+A*@qi=&?`og7;#Z~7XusG%gOVk1?GlKOGwNKixuL2y%v%d@6WLDnI_e-db|M2w)PH)D^ry@'
    '>BIQa(e!H4o-X6e6j~IOlH7spFZT1O)#*do&WWl1ShfwvC@Rl0;~?@NCRc?8xpMyh-'
    '`b@~JROXbT@tQ4U>3;!ZQcKzI9z&rsc90a*5~JkZz+><_)!$GvXnEZ?W`C7GdBc=T3x)EeXuTPMRZuS+Xp>8Oj43C=J$%W+ODx<UK)S<@bvh#|'
    'i`v-KA(TCF$9&*(f`oMKM8=;t-'
    ')^^V7b)?s@%5?^z*7~##<nu8Qg%b9?*DL#5qj4fx}q+yA{i7RsdY+xU^_mf*|n70J`T?^ZdN4?=tI~(_AB7z25bg!LHuH^@eG*Rf_jH%-'
    '7xH~9Vtt|J>TS#x8%Q-'
    'ZRyHxqmDZbEyQ!*SGKg$sXniiT;!MavhAAHavRkK?IW2<(zeP|!I^Z}%1W^HzPU`n}om#Gex)DEHXv{MS!r*BIP77=|cKcx62Q_wIX+yg0yU8K'
    '51azcpy2C94gTzIl5TC&hU$Qk-~N}m+5P_t5Ks2ODtyu{K;s?^QUJz*JATPXoQ=D?3U3jyvIe-O~75s2kf*%OrX12mIEE-NRpCifWlEQ(WQ9Xw'
    '(ZC3o@^f{W6n!z{G}nvjUHnQ)7Fh|}C2{f{?3h$AeHA_rg&tu&5cwJzhs&HuR?0RxFXP&RVDgM~`bE)0JipUkJgbB;iKL=+F_=-'
    '#oba~T%AYt?M|l2fr_03wr&!c{@uhIFfM%G#;CKv^0r#-Y~Omv;vTyH5&W;0ShbmP|+a*?hS$ShPr=9;i#?0X#V`=-'
    '@*`$S}4ny)w9DdcI3)yE2y<FS1;p_)~I+!3pWl9VV>_+FH@1L_LS!17D0ieyB?e@iXBdd@H-'
    '`(4w>s)}SOB11ioFAQkN7h1S*Oo#0=h#o{;L7?MqrAF_9rEnZI#12WDiASjHZ2?z?AjdKP+X>mA2%+14K!2}Qw{i;8~!E@i>i=N<7s-'
    'S~oHKJ(MAaW7Rzh#a^3k(RH^8E<iWrW_^%oFO`!O(7Wxd7CDj5fn!A$}#q4DlDA9CD74%1Bwa3ns$XpUS6K>{a5xnYttv17yKx&n)Z)>|+jFFs'
    '2bAr;fKc2*Qr%e;l}zPZeTWN~*>SrtcqN`{I+vJ%yel-Y{k)jm-it?SdKj&u^_)vT9CdgQ2m@xE}@+z%*HMH#iNQxg7>ee>x`qG?gra3?GLL5o'
    '0dtny92PLn4#HZAqWl`#~g5!S!D<vN3p+h)Uhw2&-'
    'cuQ4Cv3)TmCYB%Sug{XuIuZ0*bK@p2!w;09(jP1LgOYY2Xgb4@|^tfz&XU3_8H3ph;>Ie{Ryc`=S{*$EfQtv6o6^PvF1^hoNbFA|;jD2OMt_J!'
    'e=!c+o%h7tiWyu;<qjT5fYJk3D*I^a;FZNf!*;Y>baPRG3la=KflfUy~d#9eMTxf;nGmIR-hF2t<Sq?gwcexR{IPvy8&+M_Y=0kz(d_*#(_8G+'
    '%(9GdRF*L+8brDo;o2<f2D7wA`lOXs3M-01+WTxs4s^{5!Uaa`r&z^ZIAl^4n51hH<?KBPOjGHH(V#~@IglS0C0-'
    'Y&_e$CrpWj{r*(U$$3}wA*=2RZ=KEbV4WDeMBM>$U!9~hB!Uqi}#lh59Gz<Ve0Q#Fs>Gj45J>F@=D(c)?f7D-'
    'v_+`c1X8>qixTGB}u%zASuyE8W;FK$jIn-H<f&uQu~D>W5<aW?>+a{of6S^>fX`D=yjIRwT6r8Htt=k)gO!g^14PTJn9-'
    'D)Vkl}9np3&N%J{ih|D0Hgv@+QBAw5?Gn#$SV4dPPBfUy3TVbu0Kw&If5TRYGrViYQc<8ey`e@<KS-'
    '3Cp<|kqCpoU`f3I+gOJN^|009`C;oGtTGNCsfxMlfhndP0L|7F3@4(x56Ri3%AypWHpvTwnDU;ftU66l71ZnGnf=x(4t8A+-'
    'J~4w)k>ial)%mz9RgC`?9p7v0FrytaE;VI`bA9E^~vS_5v3vwiP|-)Hz_S<wg-^{U}mG)Q6u<;U&l_lda9wrl&Z2-'
    'ovWn{=Nm!3N6MXume1lth@$I|=DWXN^w@;^D1126rRdI)7S<&*MoKPh)wjy5LMx&dR-g=*NTB=w#5{{Aoa2uhqa4H{yGrale1hyZw-Rt=X3wD#'
    'BvOkrzgb4o!hl*}|Ro`$E!V@9{S2^FCqF#a^b%zqcxL7kEBe>**-'
    '(K89`hj92n!yL%17fRGYdsJ9_J@@1c2lN43#qE8q2FbTP($y0k@lzBPkfUsKix(W>I4A&1`P~O6Lz$fcGL}#1}u3*Yfdm|Dpn0GR0-'
    '|ZcaFOTA%6d`HxMjEu5cBj+YXL#38X9=2IhhFHOxKp$`&1MGP`<dwF#E-'
    'VgOTSQZDa*!8EUXOKF+u3Tsf%UYjJeU{5!N54?xp9u)&h0+I!WX$yxA(BF>OHdxvqYuS<U(9hWeQ$3S*yNDW4ni+^^No^4#C4pXIr~S3k>h|Db'
    '}#3cj$<KdQau&wo;T4`<%g-S<L<78Pv`<$DTmdrm|Nk~L5<*H9Y>xFdO6l6#we2js~iXv9i4WZu-'
    '67E!}3^85~%37sF<2sT)sq*AcA<(dx;Jl~71N4LQ-m%-&HPoutru`s^3@SGW@w4uHO=$}jNiWtsfMTmCGA@(UTy;`z@mvTto9>$n!SmF-vA>_7'
    '8jth}D)zU!X9C1~kQM=PRw)><`c2ymVrsOC))Tq}_jdaRN6%-'
    'xow7ow%N{tfd5iB~)Q40f_Q{%+7lwPV|5~?mf$({}O!X7?;DW0B1GyRYxKdJdq+4=qz+KsiJS_j5Y^&j?>;1`7_ytQ7`cQtwI#I3?YY$XTDZY?'
    'xU&{!`-?F}QjH;RyZy%@PS3Xprf5V<!Bk$XLd+#AKny`D$z4I{ZX3X^;NLCC#fCijM!+#AKny-|qV8`<REC`IlKJ-'
    'O5SP(pu1`78B(q?M*HW&yoIrDOP<pGrmxf5x0vRb`w;#yAamoQ7c>;;bCd0f?`_6;C68<wVlJ)`Z)pmfRLKk=@rMu3c)fhHkQkFj*s+tRYU;NK'
    'cl|j39FHqAlxU%YyG`K<z@h@e*%R#o9OI4utkZPTKQbR5Q~4S{af#8H5XEIBkT?L-'
    '3&@J~SZcP;c3Y`k(W6QH0C7cBq&`e5zMg!24U@TEr0s#31r_Iml)duF!ogSuV<cSOgjV$13w+j+Pma0Jful^WEE@<3ABH5WTYQNR~3B{y(Svd_'
    '~83+W4op)~kl8nb7XfX+u~H7NGGC&YH+62$1sOkD-O1Z&}r)yByh4oZ@AA^gEdqCrejWrB45<VZ9JLr}$b5R)&lG5Ca6(_NT0jUc9d~-'
    'wtW<JOnZuh7-'
    'EWY_nI=o+tUe>7S=wD7el<;pAsh*P8zKRDch$kfN!(xXRNr+VvUj`z$7(v@S54#q5bL1?w=4neW9*<XA5`2&)7NUPnr~BGVATM!}j2!X+|L1Ou'
    '388a4zeK`a^WWvaTB5n$jcKS(tV?sfYrvKbnj66Mrd$IT0f91{Dlu#O+%Dp&L1qkG}ZX7mHHrn`pq&0E$F&ee}e(g6&Oc|k&{B03BStDwmToY{'
    '_bicTE?D5C*oO^e$gN$8F&$`42cSDakci{otCQ}pW?_6KdOmP%s1v1r2`s&X;V!sm0i;KOh^U&N_ZmwxEdcyJ0FX5EJWPM2sXVVn~9Y!af76#5'
    'dOAekTHX#^`$3Ugw&EUXPdA6;2kgX`mrM7nT<#YuW+-'
    'bWgCaUCPrgCn~`^J{zP2P0;DCD~M|Qp@IxFfN89fW@`a9I$Y)exj*y<GC+f0A;GdK!hN!fdZ+Y5eMmh=+c<c%P<)Uf6wZtCfrdkXEr3iqsyB<V'
    '$3OumTYh|9oA?07KWOl!U>Njim<z_DI0vwhA?LyA|C^TnrkdaCI+@Hni`6U$eUo?1fp4z<{&mC5OV};%?8C94lj9<6$1Iv5PFs&cdly|#O%f}D'
    'sUkjuOCDnjb(^UgvA8rypt<6mds1Q5#;?8+BB3l4Y`dLaAFxWl2}H^dfZXB@yYG5M>2jR@@Yx|BE`q@d*b0}g6=1)@f|4^VgLfa6UPs#5R<<u@'
    '|JQGpUYaeatf5M)S}GYC@O~dZ(f@fU*glI;5GV)QN8`;!jyzB*O0r>Fb(ZE|EaY4^-'
    '#UeKzd}C)2jWHQeA{6`fIbqhv0abd_&gt4OcDq0#vPM8fTL)>}cg(a<Kvl%hw4D+9nNSlR{5YuoX>SqJi;XlR2TtMOE~&lJ}Myn^W#PsRx0Vn('
    'mG4?u~T!bZ$#>4Jg7V+K3`1uJ;#Vom!2AUmBuWf&CoYQ>CtncyUJ?z+kKRPwclw{2Q-NAdR7n$?7LaKjFKG1P5)y=frc))e>oFP)2CWResBrG-'
    'e}f%!V{*R?}5O(VEnuOnn<M=*FQlx~_6&ZDdWG1M(`XbLM&*biI7nvRmTvR)t!U)!fAdmN{r68MU#iKP<7#q$?V!v*)-}j5c`mz%ju8HH-'
    '~7K|c|SzPn7oEufk1D*fuk`f-'
    'R6!om)mxQ_hBu}%>$E`Ei<@;1Sxl1s6w&%%`W#%DSNRiCWoec9N}amsHz)Xa>%iO3;zlKft0KQ)q{8tf;L`;n_M{*B8kI)?vDB&)P(v1UCJ=_l'
    'Qw#MpubDK)I{t;C43c_}rh{8<ph2JQ>@lQUbQu@Q}Jv2~Bz{g|bcRlRZ(izpEtqg!Xr>oi$i_crd}`PVM|i6+BYh9TCgfnG1rGH3xW5)FX7+>|'
    'Gk!lHJ<MF@~xtypy>7l?-'
    'B*g;bxvA?pUEkZOh`omMh9x)rzHCHH)5pl+lTcl^BCb13yeZT!*upU_M)FsfoK{I;jIU#25wdQE?cOqizC4ZO$<VfBz#`aDQt%LT@Z>)b?Iv_7'
    'v&fN8(-N~^v4WRkQo5+gXt7Yg=!!rr0?uD3^NY3*VR|bN)t$>@5{ooTR`UxWTl(u_I-'
    '`@V$|M`Ez9=v^NRpy{<|Mu^{{f_`wuyAJ%bi$$&)fmKMfXAWkM{z^uk^~~IW4Y1dxBth2>*13_<_aPv*TXhBKqO?;c(h?KTasbk!2ZrY0iy02-'
    '@<(ZYe$-5fWzQTd*7yygN~2%G<8UD<&6V>;DcdQW%%2_!ywEupY)#xKurJZzx{WMeQ-#n4*wb`*1egd**_-'
    'a9Zij^yT<sXcz+vDZz2fruB+l*S4vlywXW}4FEDG-t}C(pm5HE~+@N)Bk~-'
    '~qDluv!chuyp#i_FChEuAc2P+_NEtvKgm<%DFnBMgyKxj=4Ig&Q1(2I&3jAPjD)FaDVLR!1!`%;-q>U(ckLVasXs2i71-'
    '!0#lFQKl@`GT8ER93+YlK4LY&s>u7gu~!+aS>phSV<n$D7xtk9GiG@=ell)84!y4ZM>{zgxDLzuu}dVkC%?@k4rdtmx3Ko{sk-bNk0%Xo%|Cu)'
    '=9rLQX@6gks9fd8k&)qeL-%g`7Jgy$Svbv_0bDW$Dg>fdf}`upC=+ARvp@rQtpprYp5z!CJl*11ae9HG4Ep}639OnOOIs7q;Kd_`aP7~@PYmP-'
    'puho?pRnZ2c7<~wrNcq%Xe?F)M}jZkoCX1yd&jHFGA0~ga#MD?J1d)3e+JhX$`mgY$^`NvU9wU^9R;geNzrAK=y)_K*dtjGbg&<DUhAAkU6(lp'
    '2Xc$W<jOiSi!7OEbn)<TsB)F@k>J&pZ0kY9L5I?#fUHblx;06SBM8L89rP-'
    'j#lXW*fF$N4t(qBvdH{<&K1(jD8MP!%!`#CD3!&nNi|!R!D$7|!<%-'
    'HXL%%G9gil<f!*mfZNfuk5$rHPo^VBg!HvK(95*E!R<ruO=DXI2)eEBe%Mch$LX4p4jw&5i0E*ASz}d485h6Z=W=IV}#1`p%cEh<l@toOvCnP7'
    '8+N6|()pGH`2T2x$lWmY7sAz#Nwn8yRJI^?1$n!1UQ@mirHO((g^cGW|R0=_nq~MQ%Yigq6)DiXJx}Goc5G^Y)uzsX4QW7Zbc`p?FNt0UDv~<e'
    'A*%{V!l-;4p$pH}Pfk)$Z{+?=pQF5Nc$vH(82w|seL~%7pqd?mCj1&-$v9sc-FTSDr=V^(9r1-'
    'v4(ZH0dxT;U8pWcX+W5%KLDK<#(OEG_kspXB=XB1XimQ=iiS*K}}&QdSt9AHlMZg30GozCLPp;e4CbTV$mlHn6bn4!8TYE^cYN{^rAAVKCL>mg'
    'M_^VgrW)i1rBfFsmawFwH$sjtm7POD{-)+-R^=B>}@rg8OPIjIfVvWY`W&!>X8TyIS%k^~df_(;U^{-'
    'hk26}enDu)+Ydvj;pLAU5dZZx_y$bnV&GDIYyeGOX$$o=?*?AoMSC2hgV?=y9-'
    '|%|O3jjGT|I$TU<S)+q!*0WMtKAuImfbdeAf+7@rqt>29q>rG#o1s7cO?%eufxS~c*h&xp;8Xe)~^1qErewgconG(roB#{RMU&3Y2j4V%-'
    'N@v~R$(CqXs<xzKd>MqXO}1W8+e|}~EG1Ln)aN?a%Zh6DU#ywAuIj-mR8m_(&~l<x^V(UkT(L3eEqi!2ZlZ~R*3g1ZHBAnuI(f@Scs}5N&UbEu'
    'a4J~xj45hyk#JaXnKjL%{nlWJ0Jn#I5L&5nQ#}8zFu2w`Ws_=KMXNW(&UM5(>`tv)3RJ?6Ri%00M$6ekxypVOi0LDt3S1!4gj}g{m<y9!?^ESp'
    '@(r%LV}&Tw<T6bQtq-P=BzDEEX!o!+r&xL>*$<7r{}}3(pqlXQW&O#uk-r-Hbk+q4Zni?h_0pe$#A3lMbZwl0Sc9VI%5l^DH3y*ewFa&I;;q(x'
    'v9ZpkyKFTYTq<;RD|fgm*=<pg)3x7n#;o<POxcr00g|w#0*-p-'
    '1QA&e9@+H<a|^4R__)EmmKE>eMw8GZK2$^^A%O1neje|)hRyMj{k~NQ3u&E1TaKkP0Q<e}Xk94oWx>WQ%;gC=-'
    '1^V8s)wnIS?Z?#;$D%s#tyd}x%mU1V2b#G>eX|slB~5G7fbiHwMvNVR6$hr6RuRmMuG+4Kwed@j;>hSHUvwoM?DIHk1{Z9aQvWN83f%_PBM>vp'
    'Bn_($bU`M-zCPw7evw5gQqWYOIMNcdi6UvQfmqw21z)xaO=A39bJdPt$pjP+M6HMjO8Mw^Tp;`ic^ihJX3KB#DcbBeZMVBj~iQ>^(0q-'
    'p=^U9i9Hah(nqo^OOhqzesM2$AID7hXa+iQZC{LTB3w=}R~Ox&i`Y*TiDKL8&Z7$R8xVn6peGi$|0Et-'
    '%#K>rLo409OlA3`^J9Bx4P0lsZ4WIR6ORj$%X+R^;s}z77eA06pJ|QM8<@<`GYUuItlXN-'
    '1(Tx2YN78&rP_Ya)z`Rf`$2if!_*gx1py*I3|)UppKkiiqKVDLK1@8-x-h8CzCa%a6~v-'
    'W4BCDV>cs#vqFJHelvC}=Z!ESyMJAHVDhOJUNo0EAWm67L3wT&i$|>m^Q1lr%<25`Rx_%Sky9n;k*z&-'
    'x3y&iN=kEsl<rK3yx}6|el+igmxX@$}LG3IgLhHJJdFNdRWx*qF?3(KpxIHF-'
    ';s$+7XW=2LN8#qay#^m9{%ndireu54hf;m>&1FQpB{>dGK<YfB>FIN@ow8QkFT=a)cdw@_!E23e7v1@%()bSDM6hO^P@b-'
    'sb8^Hll~2pQRHl4vGnGoFi)PrV3h0(`pqA12yG8-'
    'SO^kPqvg@%sgO<I2Ha_Zg_S@aVG4&Qomh{*<Gm&StQOFN)E?A0a<_PSw16xt<mS4*_rI}0B2rQQ6;-'
    'D!zEH?~;kl&*gRaY@z$I42>mX<=+InodCP_Vw?tA&7SL>KhcyQ6VfVHB4h@;-ZQG65<k=kOn3C86g=Tn@y5-'
    'HJz|TrJP~v$Pz``{o;+kIxm)KiI>J&awZ{2k$(y+-'
    '}BYNu3VOqiTZazp?6Osli}f^`Mt*VLfOMhNCqdHpoLFuDBv%`vum}NcnMKHeO0hKz)IK>4i6y9I2;R@NHpPUJb$(JBzW%YK2#T_LCbf+NiniyA'
    '$umnbE`76;2^0-brv!vxcL=xY_Hz2SE2*q^=I|@b+OhL1LLl8_-'
    ';W&>dYnK2C*_Y^nm^0VwAuajEyuQ|?f=$D+Y+)1(oU3Wn{!waOK=H}SM?fV^N;oU7HWU%piN?=$kdik3GSLo5gYzW@N<uJsE5kYXP2GY6vxd;E'
    'p4N7F|H<-8c5{YA-jpr{xsUnu>UW$$%b<5wklt-4(rY?a@%bQR(4-W}$d0b*fs_m7;$MK8-'
    'PfVUQwWb@u}NWQr%FTz}Ms8Qnnq4+oo$s>rh7dYY6@_g&W$MhqEAh<C-'
    'OVLsE=AsC_bls@2whd?4Z#CPk;kY*#w+;`hyXwfB4qQ#RW^^0?8TbdlsxOzbmQV7WlXQn`K32h%I_ScUH)<W6bjGbN$r?baq)YZQ(EK?PVU~j+'
    'WP3oipz@q2pB!8+4?%}(V(P4gcj3*v#R@^Po>u|Bqaa$a76eYv<2df)Kh=zDOk3xgc6T%$v<}-tfS4pA>Gn?FtnEyN2Bke07v@g8!EJ`aVQS*-'
    'Oj>wGptAL5Y+YRyS|#^iEMl9=RT0w(YO=(w&uI1`=(6XS8cw@i&N6aO{Dn8`hrm<6jB40qBkNxoTM5QSrhL^vqa_BSv%DPS4#6vgV3h4*dlTMv'
    '1%F2neK$;X5;@;hJavy6LWZ0bCSL~bzb)N}mNBN!^ZEQz@Pdk$3ew8SU_2Vwph@x2B30li#!w<H!lDoHR4AT^Y4Hu`ed9B~72D8yXaBQUl??W_'
    'O*k|U3meWsm?GP0RW2M%p$lRa$;*bmBr}qyh?hJ2s{{1mM&ui`pOYjJ)h8^pfL3PoZss%h2GeYU_6XF(vc<v|tY79#uF)~Yx^O3m-L&ny-'
    '|kXUMY|!b^M!eRGZ<lGJGmUU8<YVzE+Up5lfch=LNLfV^vrhb;b?t<qvy|7D0G1QM)jUNiGxnsCHbZ7&ZCJ|bXvG_#%Hb3<48Ir`qu7p*4XP7I'
    'arEgf001L4SbIO+9xZsL-#CL4wvMAr}zjOh~)KftSO#F@lPl&+x?y-EX|U?Kp!dzKGmB7IlAj&nr-C4$jcROxnu1y-'
    's=Z&{FvLNhgrn28Y+Fn0!90*HMA-'
    '(tLOt2;T1ty{x8dDVNLK_p|3h~ToTE~Y;@g9gZlt}Tjey9$9bJE6$4rLJ)WdxMN6^P?0U(+Vxbq!jYVBJqYnhpz{=>b{UEAT(YQnqanQy`*W=#'
    '%){xiX!{WM3BtCZLM=oq<Xg$B-f6O-O5@T8ncH6%UKEz-Gf%88e5K4b*bx%5-'
    'YKqZ(0Wn|L=E$ARflH6uQOEN?#s{9gq+&7owjT@0<|kGhPS~oqR)X{Kal7+wygz7n-{EkkR>R)GXuQ{JcUt?^HC}=6#yx?JI%-KmxhdLRH(I=-'
    '<JkQnx@zwy>#B+woif-'
    'O^)R7{Zb3*P*FgS5vpt(p<XE_y5lEDmLFihip!^LE>`sSN?maq=b|j=fZAUTOCqDXqyHgS3wR|5@=s01QSl7MXbEcS;p<JGxa_&WOmZl*nvGar'
    '_BrC~t9OE1}=^=fV8xzi^CDAvT?F1rylX{PcR|=A8lD9q06%9`by7@-HcKW@+C_P!sssP_TP%3VNa5f#2XCC%pZ*>T)d~W;GHp(e-'
    'Xu!;g7SL?Q6SwZbc%*sFD$=yOywNO(&W`>shpz92-b8&5Wstr2DRi&Uuf&-TsfURcKV>9kPHhM%*3_H_3(bg(>SOY1-'
    'FXX;L>*53#;wxv)WoMICb_ltc)xwP_3d?|i8FUkop7G9v2vp?ZcAGPJbWxVazpp`vYQ8;v-EBn!b4bWP!BYTgV_pDm!7eZ^p^o%$_8ExBz~L-'
    'ZnqEBy*`^AUOQ+UvB<Q<d!UFz?M9q`crrM6V<Ihf4}zL{$%(4ECRNzOqr7PjF#CSFd5qh;shCr06W11pGIHnU9qyE_utfzsHEBkSlD_Sir)2Bl'
    'EEu|w(fJ`&-'
    '?ezu7o;y!9g%~LFIcDw3Y!LM>VgDCitSR(HdebYf?)QeB~1bw<IX{$z);IJ35Otv5}mV>PkV4vf8^9gBOno`ihKZ09d7}WFLtY0KMHClwI?1q('
    'E%%f*zGqff@Y$Qh&8l?rua_p&fIwrE~q!ylSGYX!Jy1cgk?;ya@z$!Q?o9X3ur}kDPDTfnlpdge3T@!D$%w$A_WiFO6+^QD?(KS)zmxWkHEn_-'
    'z7(AxWIyhtc)-GJr+uyJb?~3d|Ln|<5L^-m3DX38)LG_)}SVSYLCVTy}{V-'
    'wvWdL?QVN`^yGe5ceagqHpWKuE`9;&uJs8manEC<VvvOJCBm3vVPN_Rq|~Zh3l)K|p5r|9XZ#ZxOX6h-'
    '9VIwI%YhCJI;+IfJn~Z%V;7(cR)iW;2dhwgk1)-tGy4c4W<Wsz1b1ALVsNfr@50i|yQud%Ghrs(UxyuG+X!PmVuu-Rt?f%%W(*AqY)wYA35%v='
    'l`J*xyIU5~_hO|jzQn9MSYSb>8~7A>%{9OoEDnh8Pdg)Sfb#Fw<t3oV4zHFsgt&>4fE3PW#RwbvjxF8DTIMdcFk(QwiqTQQFqz1f7~|R0kwGT{'
    '=)^ZYb}N7FosGM#(~3RbI~k37-'
    'D(vre(}$H@y`PDS8Ixyav)^L%4%H}_;>}FsDRXcI3Au2iD8h4;2JAZsc@Ti7spz^P?Tb&RF)`T8>n^2=@Bx?ks>mQ*+C7QQ=8Bc&QOS$*>4>j5'
    'KvG7qM+cN_^M&a7PvGRgsC>K-N{Gs@&J@q4tkwV@3b`-BL^bL$Hz!AfolJz!HR-'
    '&2SFS#>0^wwT3nM^6EpO)XBG(0l#4o8ybQnNyZZs~C;b1ZgPxH&Cs~xl3S7|z1hw>zsV|B`x{CWJ>Gfw4xu|!lJ1_#~K@nnqg5w_I21FHl4UX;'
    'iaI6P(3lRP7?qPLJis#)oB6%D{pm{x^9n4l6(OIWugQh*`os3%f<d)df;EF<DB&<Sy8*u^1_NNHWRcviT3mG=kFp$(fOGrv>cXnzNY6p_=AZIy'
    'I{Y!|Ef#)uvDNe>i*sxBV&?HsIut1_|ox^l3t##o^Me7wpmdDP>2}O<R5qMhsW|Bp3dVokx;+nM*3-'
    'Xj8!er)55`?w=eAWywb9~QthYNR3*p9#GUD88cc?Li{TS<>~h}xOE=UzLXydWHdEEBKb7>&H%6t91!nZ2msa;jQhiVOzhmVn}~KR5G?7gL^t>i'
    '2gLOg=Ve-pxhU{%&U@;;HZ|DzX`$2gNa%nJCV`rQ}if)gplpbEfy(?=!EDeO;}>GDnw8ka=qL3#;S8Fyz-'
    '=APo4PQb{=qXgVb^H;+vR``#yaGdZObIJA=P@Y?fNLxAby%ssrklQsYwq0cZX3@$59KD>58FlRmrVrStqLmqagzp}Jo=5DM(`U>Jn5X3HkBahU'
    'o<oO<iSS9N@E9R}(Jy>P+=MhWz@kFUW{^F;I&cLdVzco}Jmz+Q7V8r5~loD5lJ5OqBwC)@LXU>*jU51z|`r5Uk<$ON#+$mj+h0C#S;JCk7&UdU'
    '4G?*--1+;Db+tQiw!GOVGC1O+vU%a%u2@D8I*mV%1_f)0vy7uZNR;G78(rUrzQbj?YxWui!^6LBA>+h>Oadio-zd)-'
    'Azx<bo`r9J8`U@B&yz=}Sf%TIYdFV0=8x=-YFqtgpE9>rU<4-'
    '#~uV2>qV5_&U;D_((Z!GWT#+`a_Jz#lcR70)KC*p|9JS1?;qdvMvIEgP90oRN8XduD?(N8JD=qf1JuUY7lyCO*VHVkgRodmPxjc;AK3+fOS;d1'
    '8qR*5HfN7%U+Ki$FRC0izpirnrStIlee^X4mK^Ezq%z1%!-Zg$|00sL)60})jhDq=W|vwWnEMMaa*q-GT%`^;Ja++0AZoCa4QnNunUh2Pk-'
    'JtQF*al@xsEr&<#?pf-lG#xncyk(Y@HV(j2`%%n2i|8Ll?hWky!X2mBNX>dl{}p(>VeCI!$M(--'
    '3ScVfNhXWp+akKzLSs5IMmtw>c}D`F(fO!2PE(IWazfZ`k|4FvN7un}HXU9Ew^=FHV~TvLqe$f+kbj>RqtJB6e0trDrOasNP2Hax^yH>V<OU6S'
    '4AV~y*F`c!dY6U%=R0=|QC~@rrZf2(cH0Dl);!KnNgnYjHs5lG_dc&Oe96l<mtB%AO^)1?H88gJxrRGxe~Ay(*6_4FY97(6a&a5LLAY}x;`}$E'
    'mABy<3@$GtQod}*I(G226&i~}!EyWTKk&Tar4Cmy-'
    '09xmL920Ql%~i4E?oVA<ygLZJ6pY&5bR8?h=MAPHVJOfACb6KgNU$LI9RoT)TltoA^@o95hru*U=fQU33oyBkUQNGs;Fg?3(zsT`BJLiE#7U_N'
    'CNfmvv0}vgrA%8tf@vL?m$w|1t`W+oi1Kc%dg~+L=&9w3y2^f_IQ7Hr<Ek)E}s`=w4v4J>`r@x&Eoa(fDR?kcYn_bwVbPF(VA=pQ7$h<KwiyaN'
    '}U&x^FlE__olfU@}tE?BvE$Zp`FToU=$`qX3Ql426>|r!$_Mn_r~l~Elc=o)XcKp3#(qUUe}V<!b+=I^e!=bMK0uj%)FuL76P`Sc;^uP*K_*+8'
    '|UtNt~zjFKqz+WfP_4&U{l&G<+5?qAMc^L`J^L8S26xahDhBPQCd9F`DL(?4+pJQca5Rz`9q(z&=#=9*p2+L2cj!U;elTjjAk!9;Ol}B8M;F+Q'
    'H+LRa+(pTEa_m*g4fStPADxyi!@(h`F(gc5dtb6M1`<_1ntnfL5EgukxF4j%!rrB@2s1UvrEmOk{ag@8`r-'
    '#$xFH(jdWHSO|zBKtdQ@4X}TA$H<(Y;c#@cwVx}mQ4{l42+ED;E1>h_Q-CnTtCtB!KlaaYcMQaTbf|Zbdnm2fbP-'
    'L)v2YBnTV<F0wy!lfDx$*DMFmEo%VgJQySk4S&wi}fB+(`C<<wgdw-'
    '>))4V5FAyJT#=YH5(0CD_7@$jUt(E1)(f;MMc=?z?m$9@W=6wnRYqJloln%Gwi?(K^^bH4IRWF2qCaxD2xOl#tDLuy!_;b)DR7_H65tu+#F-'
    'uyJQvOa3he%9oUp$;)K@n288M0Q#?9I((vsP9lVk(VmKDzF&OX@Op@_MJ3`WmX6($gAW};aod>fhAlZ+`J^OfU9~`v1sGbat?M~XbBmxuvS#Cy'
    '0MZSx9G9o+q>zHrc_=oR!U~FQVh}$u=CD%O1oQ;u}4l!l^_V2&_kAPweEsLQu^ZpL#47j-wE4=>Qn+6<-'
    'OnG^0RX|95LH_$(r4#F0tMT3U<bS)0&F-'
    '7GYy{OhCw!nDg|ZwgXMN5Pc$K<1YnwpIR+p1%xjoIO<%Wk0w3x&k30PEecI`@Kgzyn78aY?^(qSKx`Nr*LuM2W64kS08J2Px*sg1{dyVDwtTD%'
    'id!5l634yct=?~^xOf_^#=Lh?B+q<b++iIi?nrwZ@jP}Ud-v<RV+lUzSsG3$ri-@gn7AcsVFNZHc_d}#BZKhXDeOpez2-'
    '%jk#xY_HR9Cy#Nq7xE7wSnVBE?MBn39p27%oR;8&0n?lD%6b}4-'
    'QYqy<80Gev@r~X8qUtuC_~B^ANE_q#Y|FZwMUq{Qy`k40;a2)OusCv}4MUpMR)pM!!$}5{D5+ClMz0aw2a+-o6O>4&4B>&u~=~frYS<%<&L-'
    '$sJvKImk!OHdp>AbPyHX{rl|7!M{FPXNh_RzJVxzz58UH1?oq9b)FeolQXVj52y=4%Cy94TFTOn1b6gZ^JP`<W}NkGpfG0rtHHPEp?@9R_Cj<J'
    '&bUiWjVk;)EO>bqz2gesZ(F?ExDYgSW}lpp3qk+WjjU-b^?+>ZT`{o;-'
    '_YF<n@*P@3av!daA=?S#UYqYe@5k~hJQMX|3u#)=#PT(L?2kL`6IhXoEcYRB4xxqRq29(k$b>)#U5t`daR@#hIbKVl7>7>kv=P-'
    'k4_PImNP)w#oPQ`V(OU8i#3s>y%kVhEZ=C`F&_xpl9H*=uEbg8wAl<jpf}KGVv3vuH=L;F;cx#R{OBOP#$}-'
    'k$(~=uxv%2fS8?vEIQLbYD=f}!B+U_C{=;|wMH&U4h+~mLkUr1~=6nLSF3BJ%rm0;0o9zl-<?CS|FZA*~iH(`a4{OZI`kpni6B-'
    'bSH|ud_OBN!dtX!!6P~wHa;}X#4l8=N07Ns0IB{$A1;csK!FT;IP`n%YH&%Yl!x6=G9NjI?zKPS1_nwS_iBCkC32fjP>x7%xPa!qh1S<!a0>gt'
    'Jol&4LaNs)%tBu{T@4t@c!4`PpVAs4?!{KzS}=jD~y%aOUH+(g7cDHBPITN#aHUa|oZDNsv<u4<8*aBS%yCv{6=i*_lGu9olKtUfcgcohUvhhz'
    '=Z85~v&vrF$IRE6`%WTM`?ybvxB%>$XxAWmNGySIg%AvtU{tMMHumh~UtKjNgM48;@q=~Wn?@nCl6>RZsqsh3$zbkBSovaEjO>GubG`sEl&zhB'
    '6%m16fA$9ECX3}a}X!qf%izBL9I#w_d@f5u>|6P_7k5Tq{WJD$%xu~ij~4;43%s%{(YLAq`%d_Zk-'
    'C(@+?)*T!u<F`h7tX0NXtBkR@nxEq^hL`dMZ0F;+R2OwvnoCd>II;*9Uy8{y>HBljmmkiPlpcCHNd-tCFNJzaU^~NKtSHLMdV>895Sxw**wVIu'
    'Rsi>mMI-'
    'S+l5%~ERqX<v=P#%g(qF`>34Y|8$0pfZE*9cLKK0LAi8s@FSjC_@iYJphkAjoNuBoAZ`7GEexeo+vFbrV8iHMmCU?;>Y*MyZJCW$YI8a97%oRG'
    'mq#3-jq2+Ec(wH!|=^BpKSl<__sO~>BV^}=%R08Edj+Ml73%et63{zuR$NuVFP4kuYCq;-rBFYj<1dqLxaFdk>-'
    'I?;kh@mT2pkDr!4=FTSoSd*J+L}be-fp>%fm}x{=w=Qhdjf?r^7J+pEitS`VqS9m?t$Q+T?W-'
    'O@i~#7~(|t@~k^iNk!)cypSs|P^3dMlLa42qn>-'
    'bSMRKIG&wO<JQSEa%Kt^oL=TbmL7*M^HHj$stZrA!Q?sQij!2nul7u7p|(E6~cM+0kL}Wf^^0LQEvUq`4EW6#hq-K+FQB>-'
    '4qpqWw<sG#1KZ+ujUA`*7=(2#^8-i-'
    '^|@aRqq<Y58!H%jd+VY~2zN$`_puc+muPNDDB@IrpX*Uv=U&N!+*;O84vsQVCtLpqb5m!YCyPft#pkpOksZZg-Ab-4P*-'
    'H|d}I?*_v+B`~fRj&dE*3xp)f6V(_Fn4w@j02S3zwWy?dys!)Fuz2CX6z0%!A2It2T5glfFF}Yp|4AfgFgONrDh}eG=(At$Iaf&z0P;i#V|GYj'
    'cl;Zo6O-47)wubm=!%;^F!2j1SwJ)LCFX-9br{+f>L|k?zpsylTr>xR-'
    'Z9NZqw=Rop{$+hNs{xPK!OMX8enCAG>i~e8P^3)lH|0z<2`#c>Imc_;E5U)`^gU^=Ovi~$Ey?xpEXQOFk+fild~taWB?2)gQkxl&|H!9Z_ez!6'
    'H*u4DG9_T*38zyL8}R4+08*~e{82y{^^P+3o@W;sTJxgXIf@usUX9OZ4wcb*xD>Rc)zNYR5!dlX;$j3ot&DbrljR`+{MtDgznUiuA6&;i$!!L6'
    's6{M>2hdC*yBFdZdjQ1x8G~NYmLUE<MGk4y!Q0Gqn6z~8lN7u;lF^mj8K4dUre<ExE4BVkzlT%&WKmeTE&k@O*{fhf-'
    '0ODshFpyBCyrSthJbnXvEw!Gfbs{Y0|)1dZzm;kkY&<FK0mW9`(-#_HlcE-03w*oiOEL;4nxAM;P&h$4#-'
    'ES&ePba7;=x)@aceO+GL>k^l!EmO-'
    '#*A0iN#iugU&Rg)T#1ej7TWJAtInMU>58lPUVTMDzu>^LL~wKnJ}IY|kp%iysxb?S2MYmzyWWImW(nqy~3!kdK)f?bfX8oHF4F4J?I6uC+~@Zv'
    't>7#kL`P<Rm$lu`mEeNbsfNBx023D6KhZ1McvkfV>*55gBnmoR2}gCvZ)!W@-iT=Qo7VnC_vbhJ6h-_|q2*k6y2T6PC{-'
    '?~}nL<%8^sixk<^W6mGIInu_WJ#-'
    'wqWl8K$DL}TLzSC}zILf1s(3LqPX?`Vzt<jaRBRZb>0R~%FOmwysjrc#iHDt5tH1udr=Uul%o}B9+&dX;u+Tl&Lab+!SyMSR=fR-'
    'W`WybQHyrK3*EiB(7B&=UYdEq;C&N1HBOlzd(2lO1TiBQ7LUGVD&B(ypY*LWaqQ!-Wucc-'
    '21pLeHoDJK<%_$Mo{@E(>qB7Grd)<SRVSAH<F!Y`IoS?jSiAKt0<dr)R?d}2W2D!x6hvG0;U^30Ne+m0cZqza$*qzRp(!>Vm#GN=dgaQ`VtAdj'
    's^~bIE>Xgl3z7i&B@JWvPugVv?Ou&P=aWuTV+dih*hze7xJ$hFHP8&0GeEeLn?zav~z`E~Vx_;z-'
    'E?`0V01c@)xFD3f)5d25wj3P{=l0^`=fi9{LKx106h0TQ{r>o*|Hk<3*#3DvwuBieqkg|EI7G_puPdYUPn~GsMvEXcO{g*56(9dJ@E1qUCzncm'
    '`8g%1EZq$j#CQ9s-'
    '+GVoV$UC5gYfD9;^<AZs;I3uf{+%f*@N)(%q(5H%yq+~)_%MDSKB0%>xzvCD+D3A9U*iFv!xKDB!W*J*BGpOofFJOe=;JqHKk8zv(bN{NlNI)3'
    '>6?H^@9pTwJ9r_gx-7+5j`3NF;If225*zM*)b?dxCUyTOthw06@$Ks5?PZ?g-S@ixSb>*Kf4S;5>M20d>@I0KoYf?l}}?2p-'
    'G3#rY#tvC2N?9sW_vmPj+2Q`3R&cVh%Aa)^g_V5oU*hJD4>*cn>OkrIA~#DJg_v&X~bAgkYNbCes`!{?xtuz`lYgM%3-'
    ';xnS6APZOgiMqpIZ729_Up;CSp$iO5kPMRDIjbTd`{%L8QJ%_0J+I_D-2(r0ZUZs0(-4ZJk8))Bvhe8?h2d&|#2cj@HxxJ4Ijb8`1I6F;u!^-'
    '=b_AR#n*eN<W(|X0kR+nBiHwxsgmS&DhOvjs?d?Cj{ddI~;#fd|dVKfCYKEVb64h)wTeQC)|x<=Ft(JGU1H<7OKEkpQ6`eB2?QOrA%!4Hj7<|R'
    '#7TiiOk=q=fWtSn1u_h;<#Hb3`L%2J-duW-|QEk;^*?qrEoy)NL0IxO~$S;u1J*3xErF<t2s0UK=Kr-se=9dZ8>HdWz4ZA%rGQ!fB{>@l5w({w'
    'i#zBE!dgJ3vJlX$XS{DD9rYWdorWK}O)v@4nAuwxI0Ow`g1lHoY=Oo=boFg*jYG1f^k?U9uAg$I<^T7q>Xyx?W}u(L#KG=ZsBT#)CL>Qo*FQ}1'
    '$h)Q=7Iy3X0j;j9-'
    'VH6bBuh9~5iRJUQLGDQXv<}1W5WK2H!%Nh)&v=s@uFo{rjyWZrZk4dcv%tA3_Wr|EAJ0;Ti)>12@m8@i1mI1B9gix&_gbC;D$cdz*mL{JKnUpc'
    'QwFt8kOULozib7>YUQ#jn#@wv<x4Q7nzVK$=Vug;I<Xc1dMhaI5W4;o;^=4BdG{HZwnV3Zu&&F#y^9c4yS7njtmGScud_>HAKuLaF`NJuub+%T'
    ')(wcc6UG!v~Ts!`iYyCPL4aV>7!MJ|^FVVmH4xI)Y#9tcsfB6GXPOZ!`4SZLeMjFlHgIy3S>%aQKh);j*+sKqpx}$c77EitZgOCCHIU)uHJ9*p'
    'iS0w_E?od`OSXv(XUr2rE9rgK~?IA;Nh5sF82`20qThwLhrP=E<S`&t;b`c5XC#$Z0e#!?hW{E5=z2rzR<)xVV23#bo=(GM^wkRJiE=?$GS=Kt'
    '}DLpqaYNKV6?kDURrhmY4rfh@vR=oIPLKDK~SI>74h|<PPcFwDt38~_U>uAdK5PtKG*;ZM9qY80Z1+9$|U6F#;dVtKar;P-'
    '(bqY|cx|+;<^uTERhg2+O7MI@s$uDzuG2wiG3>CdGs9TN|@v2ObMbpdIxJ{AVHGnWoQ177qZATi6;B>f{QX>Uc&qGh>Q7}qMz*N4MU54Xsv=0N'
    'e@_i076HF-I72-'
    'z38OVBGg+qKAgi~x|hgY$9$nWaH5~50YuXNSIHL6N6PQdTtFXOzwUh}*c8~r;em$lyaFJ|Dec3|(dF>C#}dvXj4lE{3MnaWub3*TZn&c=x)%_Q'
    'fUEa!z}r3Eh#&8%)r0)3lSuh@4k*=D2|NTZiMi%1S^qIgqkFln#IfY$%c6PgUO&tuK1EP=Y_i*UTCRy12w%{P3?+mM(%#gBbVrTkSAe{e}$Jg8'
    'b3Iu??p4__tbuM+cDiTSI<{8eK9DlvbRnE&Y|W<?tNoyyCZ@lb`NWDt-'
    'V3315s_e+hxzucnn*b+9`HX>jDap_OpONRU8Z%ne|e@~!|e<E0k|HeQpXu?-b@pai0-*td9xmMbQ-*s=LZ$(V_$AGfZ>Oy;A-'
    'H;p^4vhnm<$CNK?fk2610bkUL`(LETb8c^>)CpXHMIsZx^?5MFtek}^pvSJU4jO|D)`ZGlgJ7#$zQ)Xy+YVTI2g&ceN_&=Ead=Kh%CK}J#}}8p'
    'fY@w_`gd0UnTyp68~3;{{bZaqxSxOt2^%6qmw}kW&Y&K6u7lBn=EIvRvW?*>4*J-lmuD!dR*l|5JAeQ2hvV(b9y3o#&N?#7sR=#6Rz4*oul-'
    'l3G|5K3_(66rPFo9zr-s`OY*50b(3FLTDs1ZNpvo8Y4N0NP*DQa-bxTx3h^20pvvYgz-Op`HuX901h+@?<7MPcnnX|+s{(H7ucbe*)glKr&udF'
    'kM%NKzbx8~ijrG|Kve_>B4JXc!ru+se@j`MoE|JjymH33KX%@rIZq>}|h&yBJee|GVH)WjfsRMS4=R4TUzdP;O&7#WwGY0jn5pAQ9o$}nEi@UF'
    'u;gz`c{Q%BdL<n{i{LKx6vVz%zVO)2trpt-jdjGkP6-@8O;f!kfkR-'
    '%08SgUmTz?u}dzld*2ZMI2yFWZ?_l2(RCk#4CMh~EG>l5vn08xF&^Ugu>-'
    'P?op7XrOoMb~2DF!<D55s~>;0SYcoMA%z8TlFhP`T{tTxZx;}(nghJ!%e0oBmiNvpDLT36&nFW@RSol$`QSMo)VmLw&Jns2X36^HPhjJ(|MYXz'
    'c_HDxeCQPl%3a}f~XuBR(Jp9+y*>HH!zbl6Vb<`i;P;$fh2y(NPDCt8!4ScHyxrbM0;n1(ZH;0<{8Nwo3^hO%mk7*8f{-'
    'KoT?*lJl>;PIG;xTh}kPnC%woYQCjuA7{LEBr4JbxphTRsB+?Yr*6om~;Oc{e>XYHDnY>0EFrBq#%`7wGpqlhDYo~(|$4%vdSvzlwJgSngW$gq'
    'j@~BE?m8_ye+F)~5Lsux^AY_h(#-xZ-VnoC8Tcjhgq%mec<o0qlCY6Ow+ui-%DT#I;3KAX;%49b+7bylN<LMz?gmk1r9#-'
    'g_Wt}6n2gOil7^!Z3V|fCKU<sEXeUSygKnLW{n5}j}S@tKlOJ$W$Znb6|^hoaI!Li*TfrdYblwnV&f+a%E4bIV2W3#bnNO|-'
    'hYlwj7R{i@b7KMbHvGp@-'
    '|GRd7yg#r{C6|M^oGIb}t`1zArnptSY24;~A1CXi291;X+zqizXEO+WH|z%CjWZL#jR#2N`n(HTXWG%FB+$I71HIuF*o)LVRYjEXX)9bdTEV)#'
    '(NVj5IBp*GhOMs7<ikdNt2{g9hahWTl(=yWgyo*k*5u0;p5k%HTr{G>GdnZSbT%ixDIe<R>Jyi{pr_8AB6eAJX%j>`HMt)rD9BZmb8}&8&Dn;`'
    'n8Xp-l>V~cA0t6$<TO@NM-$^)xMC?~dOk_zp;+DwDo_dCtz1%%(uqCRO73Awl&>R;)UjKK248X-'
    ')a(X1yFe4oWf%ovKZv+d+q^dl<oXkq0z4N@x_rf@%()w(rV!z%`Ij{eRK=Rc8%ZuKU_GBNLTbH|-`t8AxuENdpCt1ZCf4<>3-'
    'Vr3vm$q4IrDiKU^(!GYkhLy{}(eiVwHAC!5)vdXNjnG3g&cQJ1^9i<rK7Gu>K}~L4|IeN6IT@n2Pc((@cc^2rJnwyq~g>s{GUS<8RPCKUuxyBJ'
    '!p#`r`2u7WlK3)$bDvYeY(pkuwEn71tE)nC>txP+NjHD3njccXIs9O36P{IrpwKP=-'
    'BQI;{om!~$2TC189#yz3m^QU_t<bUJ!XOGzTdG^=D|cQxikC5ou7QG&`RReAXtlBsOt`0Hfwllg-'
    'tp4;p7h9u4D<7b}Z23XXsDbFY0r>Xpz%p#`L$cPiONmVhdzi`cCbbNHo2Bb~jh#U~+r>|T<yzl(rHX>4#F&il%M9BiOrhOvQ?wc4Ra9wmxjkQ-'
    'zG?z;GNmsTP-02nvKga94AWa@-iFA6hN<Pij7b=RxjNCh}6B3b_(|V$t0s@i}mqp$-utN!-AAy6Ew1*gAxBV&M9U=$NF2}U?WC3gX<A5-'
    'NyYr!bZcPI>VxIXF2*)S6WbyB9^v8s6AA#6#|Gfo<Do++mxP?~44;Jo<_P&MQQ~+0s&EZ*H=QY0gQ+px?X<3d~t3#u`Qj?_eamKMNxDjUY<D%X'
    'JPl~^bnj&#^cc}Cl0Q%I(btp$>1rJFx^=Y7Kce}mOxYM!+^vJ(aO&~^^jT65mr4oQ*;^tL-YC&4Mt}|%a`)A{K-'
    'QMYN<7w?#=sMFCVT4svLc=6x%lkx#f;<QcsG$bc?)b<ajwugBtF>x|GM_R6Fg3d5n4L_AIayKHb*IrN7`Ss}T?#fcJ^11dB$mKnBU0ft8yD7bj'
    'EQv)v%XP8*WiY3WKFt)y7u&!Wwc11`RP_BE+ymEd#sK~DI58ZnzopU5$&6K5H7IpubQGVPf)&pfP;*Nq&2-'
    '+g$;f6K(|^B`RxY+3<r*X32JPP`)6jCZ90J><+AZB$0tLei}$V0_@rO#U=bj@FdKr|3w5sT8K=zD(X>7WCl1i|9lo$<&#X%2uf4Nzw{=>v$9pH'
    'EQLkIA5??3&^IrUOHK)p#dbzz7ljO;|Ct1iSqzntlhA(H$*N<F48dbEB`0gh+w1UZG8Aj<GkpkBkxY2U9(CWdtPPvM5mfAj*p>CBTi$s6r>Rl>'
    '?S#JY*-8A>W8WCjrz|S0W4A&k<!9fsSxoL|`1|m?A9WHNfoNz@8%JD&xyIA+!Zi+_Buqy#sUV_BCxDJEm)wMPpaJUHO{Gj0cfV7+WB29H!&-'
    'D4L+9n+qE#6lQ%f<ZQ)!L5Pixn$9l9t3`L9j~&6sc=Plv1?Ls$v7`-S7fm-'
    'o+x5aVMb6nJaE+Eu}wXm#Z|7l&WAE9e99!k{=p3OGw#l3=7i*#>84Ux#KXwbTTe2nYainhX6XIrxJr1J%18}AwJX2u%TL)g_QC|mCab2mMVLsP'
    '#IOd#sj#-Kqr{4@a}r(z!td{sdm_!t{QJnfl|59YfX-nDM%$sEzi{bxFyh=N4*|E58MBM!0T_xTvFetI4Kj7(Z(DrMU<aO#;R(jO&Iw}un_gF6'
    'i-fh=N4h+_Xb-'
    '}#>87yw*<>auH8|O$m)ZcB=WW0dZQl%mkEmUl?>r^J{Dp0WT|Ue2=`i7we>I9GP{}RoUj%B{$AiOBf1mDy;I(6%rAWO65)d+rjG(+rz{59N5F7'
    'yv`nBswukQsg_3fa?ZGjrRcWlqvdLK~PUXyCRD{@5;y@|=-'
    'L!su=wKe63Njnk8=(MQH(0QJd32pW3v?>NDv%RR1E3f55Vc8`C!yN*;bKIywc{KHrO}kvuhEkKzG%=Mbg2LGv{x;d1yxvc-'
    '|bznTULV0hG(wFc-'
    'E<7nPMaBKC7>9X4?2jeO~L6#zSR0ULlWTw|G3#eC+3sLe`cn3fr7*7PF!%aGi8P7v1ORf}>1Bu#L~CBs2(*IrW$!u?T4o62&2?8Tdfxi?$Df-'
    '#!rajWeTr+Lbpqg87Lm5C3=Z&1FKpzdk4vp4Ti)EC=Gidk_rvTjNgaU^KQn?L$yXU#<DFap-'
    'u!n4tYbCg{itE!2dVbJNCy#+a)<zT7~^eSOoWJK+h=2}8gUX&1X!CYsH2;{VA!hRdXdh@*g%olimnj^qy&K2`iijrI<Y8@e*oR${-'
    'ZCKVuo8Dj!1T0qTVq2*2aM=pNEQFCw{g%0WvKM@lGnFyrT<j-%^mVy@ev;zBY4?yU(yZdMG-'
    '#*%_<W>EYnkw}mv$q8JLY|jt6vRc%2om`2saI=itK#~>ZIHmb@FxnE>6WE?N>O9a=QGcpCYP7g@)nIa8O}`1x=3@G{yB|pSz!J(b&D2qB;~YYN'
    'IH-X+ScTvi=_f((dqZ1dl>`i1PM>2F-nRaYvfzVS-uW{Y_fV5vw{!ZlVegYb$DLQuWG6Qt~zcRWRC*LU+`Qn95nSOnR$6gwCu~w3UR}DDEYTO1'
    'u-0=oI^5{MAj!~wxrPsFRduBg2gq6b2qNz(*&sK8iPh};#(biK4C1>Z3rl*Ch$b?Q#qCpdL-KH6Az)d_M*xo(W+0tL=SIrff$HI#R(ikSn_O%L'
    '6#%&8{OB|`yRb-'
    'd7vU;3DoL~Clq!*L0rvh9<`bnwAzzMNY2M90q|7bm8!XX;ufLY?<pYSKWgqqYAv$@>QLg$UEhf;kZrra{U1Hz+!$DG|I+huTV;f2@YJU{JXO!p'
    '%Euqvo0oPFx-KglN+iojO$vI2uS`TpjZrR}|3u5Z+;z{r^8C2haN_z*;+HnPW{I1T7xS_2g0vE>kln257*Nvx{|j*N*B7NUa8a346uMT|y!(kb'
    'BFy$v-'
    'sLQVmTJ6C(fE`3lxCe|+k_QE2(c!Tv*t>}*sf%ZCtEq@Yaa1mHwZ1dPcNakeyzR)|0G{OS@FxvacGbKp}V}P9N66h6jn73PwU)Ldd^o^jZD^6L'
    '{Z!%TTKh@aG=2HDCm4r5(cF?FCJH1Fbq%Dt5zu5V8sO$XLLcxRGz=r;G_@`uO1ccv950WQ)LTYRWqgS&m6=Po239rCvze^_pj<}R~R=0UX{G#K'
    '0B3dYN{!<xuVJDp)YCG*p`1?u{<d?okb`1PAXA1o@6S~ShR|kiD#Kk>gFMi`kVDXcJ4ME;;6spgt<eo{&W*K0!i13w*3zJe9ci)lZA#<MSHqo^'
    '#W$Vmj>S!JzLP5gijrB!F`M=Eu$n>%uu|kdvAU&3v~%8A-ybfY-'
    'AbK^*!`>E3xbiSKUajTGs8qd27{)i(Evjrtm|~O$6k<hzC5OJz+tFPj3-f^U(d|1<OeApDXyR)pbcAW|ZwvluLq3#p;W3md~qN|4t!EI`8nI-o'
    'QxwX6V8R66a!(q5O=8&Mo^&KOiXL7>Vf;PJ8^}`*W7rsM+iE1{jPwYDvHB+k<!G!-0J!{R)@T(TMyUzgNsxtWE+wxAN4@UjOX0-'
    '5nnu{JdeHUJlu=hieV;8p;ZOe<;(EvL0jcYpY;Q*E7vcSRvKb%p@E~z3wW9|IcqlNm=>I<6t#;G&gh3m6SVKpo#H?*&PC3dOaj~E-'
    ';}+V$O<jR1$D---ozemJN)#J0Sb)2F$j)2<R%b=Ks{2iRh`UHSH%?X}F3FSZSu7@e)Aa(A7Y{H>s|S6QI(bdX8Ri!mOyr^_(CI%|CT7o#kwiwZ'
    'gP#UoD}%VynDQSrrT<qv?NN?qOcfTSDT9vHN7R)BWp{hdtFHcNbarIIB7mKcIBrj2ce)r?UKsEO8oj^`UZ3Vfhnink4V!ZF1_=0!iBAmVMON-e'
    's=kUa}9WyPfCbq76tn!6H_Pek(?!T*aOa)?1y|LtLr`6MJzJMx(+*c|_lL);ldX=!s{$zVU?~7jqsKAL3Eb@Sv!FOnkhjz$Yah|9*Y)NRNJ*4`'
    'IKj2qp8QU4i47<vG0GL*TX_0gVrU#uu^2sCTqs&7+5P)y}-(9<D-Gj_)Ro!zCBhy15999-'
    'I#nosiDwBCa7fqA2Y)YTPDm(u{O^rAOK+G0f^q%@&cFYiC=jB#b^!+I(Me@j$*^tk!g91RaQ|NBr%S)t}C4Z;#%IjT@Pb_ge>I<JXyuNxpfp`F'
    'A<ZmC;}2G;g)`sjQ}}%AH-'
    '8TT_{Pe+4JNxuYUYsy4S!e_N@*&H5=Wwx&wl*~PKhSQY`|UqO<efTWDcH7{0H{R=66E#c`c4Q$;%>)NqL>en*Z{}g4gOO=-'
    'Xrz@k|c+fJsLIGmwJc)fu)Yp}cAJ*3u$NYi{=IUAH;}*`9*;kp`xiXV`v=X=?(h8Tt6<3+AeH-6uur1S`PcklR?#m;GIb>+>%Z?K*uqTcY-'
    '<Rr+4;{F{rgn6lzulVmC=ovCj?gwvz|C(f0dFK0_?j%h82ltQ+Iqf(YcZT7ze?BJZ2L!6Y9hXdP7us9QxjfiR!WRT&q6^H+Uv+1KC$JM7;mjI&'
    'N1oT+rU#sr*YMdE+cuAodjN_`f8BO=Si;HVCr42j`~R=OHHR*CMj4ifLv<IzN9K`vx$lA@~9uHM10zpH5jD2TaZm8f>SP+piQ+w=^_nnJ9<BN4'
    'QfE<uek-Ejhr&GQ!y@>w&{QKjVAkcVhbC#|JKSXWtq1x+A`N^zt)oa#8w>f%jypI*)=uGEh-'
    '%awvAAZP1TzeCCE`ng`83K7j2P8S2I(2K&xbN+f@S2-'
    'b&D~9x*IfcO?o!WWqP%pW>4k|042<l!%wu<rkpAty>{rjhBHu0i($Nt}A^MXFXqbX=UM2iq$gEy+}QcD;vCPoe?={SluAz#Q02hFB<a>PH2WW-'
    'm4yeIqAyZ8u6E5tJ&-'
    'BkK@m;OtwLdwj;d<YV;ixq0j?N>@Qjf@y$Ik5sFh^E+c$z#P=d){_m6imtGh_e{88V`a#=>DQ&#bkLSvCEZc`P(w~w>kvj?esWKE@vw)PP4}-'
    'Zw()O4GMq3G}xk+9y6wvD;f?9Wr&_N?PNs5Ed&%D(u0r)tVri!cjYXN$iyq{EQQd)g?u6NC042!O~dF}X8cDr3UDHw6s2HtiMgg3NpdxH7MBFC'
    'F>OFeC5J&(x$@kttnYe#efQV$N)w}_IH=>5Y=mQsr_8;k8biJ@kH2IfcqM0guNDIeH?=LriG`_S5ORkiA`z>=gI8gb7L9x{!HGVuhnaPHwKVZz'
    '2yYjE7|+N0jUSZ5<WntuiI9p<h_z+y~jifbeXT7JsZj4QqP*7F8lZ`elOunL>WtP4U2DxssK)PeXY_o~6t+u@(Y61Uove~(@of<!XxK4dY7|HS'
    '1E=)0{ua~Ez#;U7jJ3SFcN=-'
    '}SLUtjzLe@#4#yqfikQmjBzmG@WK=eR(nowOv6vw^4<Em*2EYAPyJfF~769M@!(#?uw)N$XL%43hD3Yf_En>|~a@mIOV&z|y>3>lYP07`O&Miz'
    't!+yY?;@GF-pFzgSVZtoy2<7cs}M{lJYd9tk8$+h0-'
    'l_KX;?vQ)Ho9j0wkMT#QK<)zCMsR9V|qy&RTgO|GM_?BV?iAc7~Ye_#xwn}3%lH@?Kg$_P&u~=xRjw{Q9iBO=OpL;Cvdn-'
    'X!+B_)tSEa=a!y*Tkiu~)j=@mDEnBHHwFpdu}uNqadUAqMXoisFH?5aLL>6(lb+K^CT?iTAC(%=S?)?8*Kbkq{nr9X@MsuyMN(`A{7sU?xXvsh'
    'mSKTE8bMe63sqLO!>ewN{xr{0<})1;nG6X6~m+f}RTuhP>#y5|S|W+jO&HIf8tt^t{P8+m_sgUbp*lejyn8U%3h;eBOt6(q7u+yCUuyeZ!d!%f'
    '5_URg^b`#~<8vUg0;?Be33&Y1rqpm3*HjHIZsP%U!rJSU<x)|)0XvIEUpblA5FUz-xph0y*&m&b?s@C!x@(+iEKz@RCMTiyNLU(7OB9Ks?FQcz'
    'A3mTj<^7Z5>WF9|-HJS$)jF6*VM;*>-'
    'ta=;rB7KxgKitieDYyb{oq2Q!zzqi{Rd#}?fibB%=_lCY#68c(KSM10Y#@ee5vG(e7VNH)TL7_@CNr7Qu+_Y%%xpn68y^+DK63i2$7fD=k{sDt'
    'iDf^iM7%=p&_#e)cg4r}KDPFUD8b3w;w#%DQrEIE5XY6A<82%#;MkNE`qc}DVkYpe4`5##J7(Q2GcquYjJ!`U;>B)-'
    'naoyBqxw+6)rEt{H8cZV-'
    'nn}}1nlYndy1T!ee-P1dURArL#!;NNZcKX3GieeLo#*m`atH1A`H=M3V@i+@=F!i0=JWIn_u>!t$!6l8?$<D>mT`c|)N14mv)t_JP1r#6hv-Af'
    'l_GmkF)@dd!&U&bVVt{BW^z@3(#@VyBNeAzt>%&C!@Gta_^VP@ovkusuTm>hvjW8uC#!!&?aO`4?Mb0YBTFzrQ_-'
    '{`$)*jp4Ex{QFfatb<^WqZ?_YwE^;V;nwpa8OvbfB(tv9W9nK>p4S#8z2rD}c9(EU{GDLNuMv&nKslNXWjhl-'
    'p;uNmCTok?N>k;3QV&Z;(&QN<zch?{7-'
    '$Kw&`y8Yf@R4wG;ye7IdhfvV$rOIiFY&AjqTj1OPtH5U`t^WsYlmvy;UmCxYAdtH8GYR{k5bD}Y65B!M<Jhj6ZsKsh9Jp7NLF;hbJ2)7&M!;}}'
    'cDq>v-'
    'Btqr&wsY+jjHtz>GwMM{l}`tC|r`W84^1qBhSUM(9(=*wUG|rY8xZcg@)^4z8Ll!CiFM5@qcg1#QV)RS+xGWk=RLqXBSrG%!E2?mA>6+jYh5E*'
    'v8n~m*n62_cd#9xJQ%B*q#27ogJ=`<^lIbo&JqA-wawxVX`D4yqV&O^^=uzcNMKoB9HsxMUL~9*x+6W9JmbK=sKzVSBB?i1V0qocieHh_r`rM4'
    'a4h=89Ux2&2TlQ&{vd5<d>TO_nl0J?Fi;M@O&@2cBf*jNh+ar!L+UGII@jG$B#g>x^bspK)%E>hx+?9BYA$^&Xoh&(;uO8e|%scw>xL!cV{Pq)'
    '^Y0RL2G!_9@xh^y-'
    'z1Yq@8Kdx_oN)$E}}71FB~Z*<|$0RCPm>eMs9rDDk{oEkoBoy@pE%+Z=O+vX(5CXpw(({VBi*f6^{TTIb(d?*_exS>;~GZoXT0m3wdoK9*f&vK'
    'Y-rw$V=ttW$KLlB?-TY1TDPB(Z0{all&6jZh@na5m*9MkEdGzuoX39E0r8jdkMFd99cjD*JBaz`1p%0onH#oBe}B0Qb7V)I%_8U`+$-'
    'VirsS%fWoM*8lo%|J|C#Gg@;ebS(Fi2dp1{o&yE^_W$}5&xvpxfOp|sxHBiRLi8)}rtl|B1pWz_>~H@QZW=%M<Y4X<%S9%P3)|TW!u~lqjzDDp'
    ')I6uaI=97j^ea8+4Guw15Z0RJM!#zLlkwe;uG#Dnq49f(Z)=@L3wfW^cFALtaRE@`)mV}>rrG2Dwq%qa-sHT6layE1^Xg%azeBZfEG}K9(Yb{T'
    'miAg@hEQy3J;!#$8YY39STiFr57ZhN>UdP+mK<iYydJrcRrKHGZ)epfnk;ohpnb#gBuv~HQfn9VHU~j-'
    'F=t+Gy0_%0ze$Ojh)ZtUOG%jWthR4CGZ=olB2!OsZmS(x&Fdg?eLN1<=-'
    'RcY6E{bk3ZLQ4jcUQE=YM^m*CRz~odrt@3~beGwv{L?ss>Vw$F3)M0@BUYWDaRIuq6*`++>W_i7ZwNllk?dSTS=g;Mmp#14$#?B+UPePZkr$w='
    'THb{<J_<vn-2p9`NToGoAy)AhD)juFVePUR)+dQvv1KGlhk00JR}(I?Ert=na@YwOZG9O&1~fBX&J6*n!1-'
    'W(04hyG!vCZ*$3XH+QvhZP_eu{j6csNR#Xh$r?!~)+mFyYKzPTCJ`xmOzG3x;y;Er()iZq_pH9Rj@9JJAi8^I^IN8U$*&LG8ZUx7hh~&KKr$?O'
    'r)-'
    'fw4win*9gzhdh#V5<K>;upLt>W6IVP#kbmPFq4_^b{C8;stch_Hp`DJy=v9JwT$Ui*;QA@4I84iW=>RS*iOkwb@+#7v0ce68k(?|i9s{NU6%v<'
    'uUJ^k?V+;F;8A!oRlayf@(lpG$8n@7DK5mkA-QJd(656LZ**rozZ<Ec?JrA)&KR|1QO<x(WTN9Gryz%TUD6lV?W>unHzj2=mhdip40R9-'
    'Y)nw?~KGRMm0@wms5L8M5;OrEBO#FpfVq7}ESq_Az#1&DnJ`^4|&FHbtT=LxI3fyMHEAQyj9g14_7novYF%uomU%9AV#u@fcxyWm#Ieo?q;+%s'
    'XL@h{2I)BGeRY7nWO|EAI~|6LKU`OgB$#-qmKZak)N3ZHBoC(Uh2-'
    '0nog75ozWL~y@1@z<B<)(fR!{agqyQXBs{W~RRucE$N#VZZ8_QXEbyl}oxc_Yh$|64~w;sRhLT7|Nn!hYaJ|-)h#*+en@+ik!sTq&-'
    'g95BtlTo7HZ11q{wnVuILyN;FOURB7MP)bNT!=4PIkkMCLsn1|l`&Z^_xc#BaW;9v2v%kjZ0?W|CLvwq*ko1%_+n>d-'
    '2+>Om$_b|VS?N3>jdDLSjoVbX0m2#ufI%YiIT+)`5!E`~R@c!;jRR<HJQ+#_k9v-#3XDsL}qh-G}81}k$r#(s<mr6+Y)m1UuRdH?SxJ-'
    ')w>eKX}$EWEroSMv~+6TQ+?|9q<UeW0tq5>WGvlY?D2f-'
    'q^u_iQReU?{po8=DBW>FAAgY3b;J{vcCC*4scA~Ph%mOT7cmCO@a@m|^iK!K|6>fgrO@@mJUqm%A_YXH2o*L(-'
    'S9k#mTKM}u80beigeth}zCE|;A-m{5#|GrgJ6Mldv?lgSawNUh$npVVpsOgpJ+F$rPdOBHzM%FbYIo_~B6gzQ4-'
    'NU**Be1!;6m%6fGF=Smpf`ZyaAbE6X=+@|k*iCYmzm{32KdX&^AIE9YnF#EHOqtQyHfnbX^*LB;;QauPB3l;ezd&7B$@CjcRD--'
    '`BPR)X5>!;NN%?#9Q#>tm7j8RlXr`CI@izBd9;UcK~FHPr%nDFNq!~Tw3~Kw)b4eMiWnl<{^CIySd_3&+ui-'
    '%slG?{d&}ujyLmLW`~6Pa?lxQc#HxZl=<eVkH}@)i(~2RbC?oG$(q(eIoGrY`b>K}N&Uo?#+#uuQlg<c`+-'
    'o;8Z<EhMvtP_bmX&__>jn3_y5Nds(k_tRsJRTIAZ%WY8Q<Sq&MwjnLOfFOix|VaPIpmNmtB5s>KT%$3Wf??@005n1g@S7+)>LOZ4<atC&Kcl1>'
    'tMt!gp#9kG2WlLFi3&%wG%Mt6cC72EE}{@ps@9-P_msz}ekxf_5C-x?w@!zRLyf7{rK@z$t>--&R*nICY!L3-'
    '_O0PW#*0p*`4djhiQXtrB7y>n8MiKzU0~I%F4dKg+Sx4TzPrvoE}vw^)^9lf{XUNdQN|Y$`O<*O~m$VwM^HJo~vt#iL$lKQTG4A(F|q>~65XoP'
    '0!{uNt*$R&#JRe&6ey9Jj`Uq4L-2R$k|_9)!$~l)9Hm@g?s|em2s+73IA>p3JAhijLeFspi1&q_3AGS6sR`mq(LmF8-'
    'AZr|}P53@6FlSz!b!6{3#@N$HOMIN~wE1HO#lXuD#Z3UnvIDRHeKX)xlnCF&buQ$rGWax7X02f#U5MfkY4&>b1&Gt&0uc)vYpjgQ)+s`Zb5SVE'
    'KfIsPDadc`}v8XukjHzqV)%>?0Ra!z-jq>`$q;TYP@L2G{uLQ>|4Ni*}P0-!uaV&<3wyA5(JY04k<<LzR;Rq2t3BYSj0k`E-'
    '@N9d;D4i@^;Pu34rZKWq+vbTKnPOH_|<|!5dZ=S&3k*1p5^}1pEz4lOzz%`9a+ZG&n?_^MLSZrBv(1Ss%^|w~BVQE_`#qPn^q6o1EcIRx^9u~w'
    '2Z(eZtIEt{?@NsiPDFT_8@S*8xGHbCZ+T8=7TYHq6q)>05c1HN=B(w>9ukn;ru=DHjp!L4}zGeNxqJIS?t%D`sGS4GxWIo`p`7wMwZoMb9sk4T'
    'I@6fF1Xh+$+;;5fF)^~iY?{F+y+d7k-_4A-pN5t~i*&{-WQX^u8?CcStMTrsfAk2eL+K(R4o0JAwGhp1R(3t&x-'
    'hDt?6k08`Jhp$%8w{G{Kvoe>N53zh78n2#kbh$O0?hexf$EwUu13p65K@&03t{+$?8-'
    'uAaavg<W(ZG>nURv~uZ&@uwkH8r&(yjm#v0fe&LEoFC@CfXJGDM_cC`|9NYT#+L8nejLSPzq9&9>(@=8u&P7S4T&mhm)O}pFejX-'
    '>{2h>RNM(3rXmMZ~GgP0qI<RIMR1%O$^&8yjE$_WH^XV9|u&&Kb%z0=`VK(J}7@;g7cjdCCWiQEBIHywhasT7k!YDU!<vrmRvFD6}!uy`D>63T'
    'M_1yq^A8hbIG4#MDu#0ZdtUih8!g0}B1l2l*pb*$Ar8IR8TAcwVEsG8HCJN8-c1n!Y`_psCAKT?Ab4_-'
    'RPL<_{O&A$tgP2{67^s7c79uQQIf&&jU!c%W?-J83_tV3-b-+pTWJz%Va<I|A7i<K2o^AG%pv|?StT1i~bg>z-yKv(Q#M^-'
    'SO2NAGDYY}LAc|PegM^unrHS6};gG22_)-?flioIg14t7cq9WP}R;0N-'
    '+D`NTB@%;ELLvUKGuu33%&SEih`zz4qy=f<yIB3nP&@!uM1N*qWKkoFJMBJn01gyVE=-'
    'P9x5J}b>=~p%$`?$N!{XPU~kSK+k?IzzwJ@&wwx9c1m)l@aB3;I%S>B5_I7azxbF9dYYMnU!+nAl30Bix#aD~<qTVmWE0=&kH!rz?Px1-'
    '8VJ?q%VF3>{&g)O;!Zl(8ZFdc2GldoDE`Pf1`N=Shai^g}V$js{1JxI)_vxdi!O`507zPCdnC)i@<{VZR7j8&J5)14Y^>MHmWd)AX1^uHx5`>L'
    '44&3Ph#i89qfr7zLN!fIeHO5C@QcY%I8k93h#+W<X*N`nc7sqy*`)gPuZO>RI>D`Q&nQVR2&f$UZPuC2mKutaPyy(?CLZdGEc{ZfDRiwSdZ&Pc'
    'BQv6K6%>6dFLo`KbM0AMv<h#q&(7uBOhQ!OAO|z6(&f`tp)>e57j`aB~A~*s{x#f`&D)vWhU~+V{z^-'
    'R2e0_Jfuat(w=)VmJw1*RRA#Y1zXwd_oz~Ya9F25}F&r5!ssslaF;0oQ&Xn!2g`@+y>z^N?J<70>ab_nXrJ^LL6e<HRxH>%uL?~#{2DIA0!2Ow'
    'e9NmqR<S|zHAyb#<+>`Swp<Dd2A|;WCtnlmI6g~@rllJp1;ybrR#qc2=*hPJX|1CS&F<Y#V|={B6gJ0Go17tT9?`);uErlUcIp2tSCGTK@#NCM'
    '#WHxyQ)O<o`%7~P0*ydXJlbh7#0O=d}OIv?^><?Sd=%VbLEg{T`C!fA|@^DNLYh#EpV(83L`f|&B|Mgj<IGAsh1cE-Elg}@M%giRPH+}>bO(&&'
    'eO>mX>w5GR#GP7jc!#P44OOkAumCLBxsQ9*1FW<J`7i6f}G6Q8YcxkphDUc{Q~oQ=L%umJcTfi`(ZGF4JJLi!D;Bsn^@MV=TpV3Qq=^z;%Ps_C'
    'uKGgjvbYe-SWgF+#Gv4&0=c`zfIe83UWJ=ihOx_>EcC%S>@19hCEv&{R{@YQOMYKPC~kbiK?}DiJp>1)b=!xLh@PRf-'
    '4(};sto7XW){Ww1N+@Q)&bgvAgVz`-9eS*xG+n#J3d=;w5YoOKc-XX4Cu{HESC93;j9W-'
    'jdWXDXAi45mQ5oV`cm7vTDshi+k>65W4iHDVgPC^W{?mB;_*^J>M*cQ0Q8>nDaTXqPa71(ZtAJY<TW5?0K<Vu*S~p)>%bXbR8^bQ|kic6wFG5Z'
    'CN)jvb-xFmO4etB<#4gjNFJL8Y2mQG%`HZafOw)kY%bQv8QU$OTADDj9KQ~x)&;F+;1vvW0SOOC5?q-'
    '`2R(4_Yh`jvMAJ!_If{4EooD8B?C5AYVhwJFIo^c?|pY3MBbumvQ8GUOKzb0u)a78bW9Z6f^PLpZGEQIA2|SIZ~G)g%w<3_P(}6yKIeTS<cWp9'
    '=-W?-'
    '`Me)Q=ZUejfR?6_l7B7e?vGC_f{_w0d;BX=YDEr`X)B}q7Qa6sLPS?Ll%L48t9;0Yj0{Sm(%lfwxo{FRfIS+6qb|*G`Y7QaIkQXB;2;R;BL$M|'
    '(#MpuoMg%RIZ-nuf9l2+&9jd(dmB2kI|q;T&V=>`e<uPWpEiw;4=mp`8Rk7EIS2gFY<4k91jc5-'
    'fXLBq;H0<<5D{53(gHV~Ia|Ms>)sifR3)}TT^8f=X)S*du7<>ksKN|<BKwD?boWTR*37%|m_M?{D5n#(8Fz0a$M(pH;@R0_z@F>+9QF#aF@D1Y'
    '_e8A{2CIuHw$RTySslIL%ur_(`xa_U3+Bu$U)a{+VFKGf{$Vy75!b@1^^*b^sRG?}<`rp_ipoZ3>{)LIPVOOyZ*xS<vE3gZ4tgj33jS%&9*sK0'
    '`>i`_w+8(0$rIq--kEG9AV~_$^K_Rte3tIX@%nR==FuvX)`dJtx+&;PFiGXTJxD-'
    '1u$ygkJx;5n{0ogR9QOv}7Wyu<25(H2+ZC|;RZR}YRG^w3av6e?F7l;8uXp^$9P!4z8&F86lw-lU_7|QT3Msit`rga7NmdD#r@-'
    'IwB0j^O<NNMZyHq8pP7|poahxWm%}gjC=7CEDp=B3a%C>$-8;2}r5PtJ&)-Um2E}aQE&-'
    '#+A^ez6aRFgjLdgJ+gY=$xZ1A~lTKj@qtAR{I3$Xd=S@CnlLgE;sLtFBM8MoI{aP`m|Zr$e%6wj}kC4|@FAiS;o3Pj0vXjeHdByI6u|MvVzw!K'
    'zTNiR-Re!_fepP2a<)`{?<6FdEyP_F-'
    '2xuB5;qRhfrld(awpTdn=pzH}n_rU1S&4`p%{Bt72h&INKqZ4>qIrfvut1H^>WJ7vH556XV4nP$X}u$MwwnPe-'
    '?1uO^+exOw0ofBfnJdgU<hn!(l7lL>hSk&6XOOzJ27SEHFQ>r~)jv0_&jO(cyT%ZIRA{5lLyQA@5Ydo}%Tj^pF1P|h^z|+f?11iBz0kGhNAuuG'
    'Qh;$mNh8RZW5{0RPN1kl6lqD==Ym7{@@*J7uIxR_3#;)yv6oiR*rNWRIfz~pw*V&j20<Ole42(CrBHl82cYzr3Li;?WL4CU5Eo$vL00sSI(8|!'
    'DghUQx%z^>gET=M21b~wY5`3oWmtlu1|0<mgiT=H!^4H!Ou;|l@J>EMRje6ZG3Ga!2-iv>(76-'
    'jdGV)_71$piphc21>eM)Ibac=49_o3uLb_!^N#8gpIq)R@f#wa4=u~AG8${Jj$Qq5!Hs{Vx|N2h~5DlOSR^Ki3u@uUn<1Wl?t0>RO1B3SXob>4'
    'Tz-'
    '|3Z`xJ^7Wv`lL|=~lgdtDD}4BmfelewmO*T`8#4s_Fz>5G0yuo`9J=uUEu=PxWFZNEfD7DM>RWYEqjVg`8quiS>{G7jPZVvEMsxX_E$ihwU4N8'
    'Mz%9BU1rggCMvu8`ni3o7c{4=8{A&Df{|C5RO6zZJv996B2nP@wm|XBJ1t$NvFrL%n820x;2q70E}*Vh^GQlE^u@*>J2pTk6L!~sNf4h%8i|0`'
    'ol@+%@=qxA3O8oW#ml^>pb;B5d5MDn7?<00V&0od))4}4?zGfwBopJ#(v?UX<~k?&UP1_He+_2Rj^#pH)cG4BnVqvIrZQm2@#kn+H6~tR!>fUq'
    'OLw|NBhC@V&=x9fJ~*Wd{-xxMD|1Hmb}fO#0DIBMgS%6a@Ld#WL;2ReM=tqNE`tf&AN85*wAc6Dh|!5VPhu~R=QJ?WmNjU-#gjsv=X|(_z2-'
    'WKe5phrHbbD5D_T+oO%Krwz~Ud&quxSUQdXJ%ci+@msvAv*?U>7i9lsj9Wjyge$J%1fg4>1w|g_kXL<<rk|Zy2EMz3bNFRMAxu<66E>7lbDTY-'
    '%q3$he6Oy8zn>_^2TYL$|R`Dy0j>m9PNrkFx4MP%XVKz8JxCnlN7Uh{Mb0lR5*bF~uc0_V_(X=?YqWEZKJUu8TXZdMGYiL0sh5b3UkmNm87#&Z'
    'Gz4Mbp4xB_Q9rE-'
    '(ype2Zep<Oow)kM?Tt(J1i@hHZ>aYi`u3gO@`KWy`(pV?r?<dE{_TUUCqH~ru%wXvQ>Ivtw4N&Dv=GqQOq@h|#ZXlqcsbCcL-'
    'CH#8?5Y+VVEAq1>^FGNFveaZ!$wxUX1%7a8sAwC=k$PZ-wppILX!CHKW<n7o{Y;1H<><<;T40I5C6++@h{({lzMIKYMq=!5cfQvk{bMvM6rrdt'
    '7WpK;}bbWGREK8v)QVeow_cU^qH%_^!lQ+s4GFg+ClU|z-6<+A30GsXaT0KiY!hw>RoXwED;op=DT*(^XUqP-qfvlRd%|`dfL;3V<H_Af*@$&q'
    'tj+sh=(RKFP1jH1k%<)-'
    '2dO+we_a4B;j}eir(|!g$+pnC#z_E5(#V^qc{c`a+0G6Sp$smIGEuuLu_j|``fpxx_hRtGY!6+Xm|Z!+0fVO?z(hWeZ_A>1vj(?_3E!mKepW`o'
    'Z;Dzf!~-rvl;AXW3(mv*l&pjC<>mxTdu<I%Ip6iyPEwoHaA}*F(S`dmrIUTn;E+Ov(9gw)8W8a7o1_A5+hus31cC2c>EsV!G?j44uj9#;lZ)-'
    'j`IeA!uSCq`B~~RXt?RV-'
    '*VV?0RNz3J)Tmpqw0e#WX_3u>(qmOGs&}z50{C;g6+It>LHdtCvcJJXtR(&`a)!2ggCtnj}WA6g?Gb*ZdNW>Vksf^)dk~KAfC+P&!SjUY&t?E7'
    'M|eQ1b9HU>Az!?WJP9<x=cUDp&WsQ0=kFk7wBjd?$gk~kQCJ#-'
    'k!0hBz<SesGfYyZ(N0M9kpTEYrCKI{7>1*7zab5X@YvrlI{fNiTa9+BdQ1mDb<kD=sJ|^L@&Y@QV>0z9(#8mhx7P`+;CS{aCF+Mk=Lk7HEW<#3'
    'E$WBCdRt(ZYdRiU3-N^_G-'
    ';qLy@qY9GWYKDj#(^a&$?^=(7h|d|qiX%qWjwAFrYOE3fjHvZx8=8+v&!H+cJi_n^VL|A6fSa1Yo%!5=#|3=BOGUB6Co87Nn3s;6x0;smX1BfI'
    '2ZwbDMg)&eX-`@G*9bWs*S<RRR5caDbDk@k2lDQwbfgql^xd^e9^Gf5*WLlMb}Ucn?RnQyM-Y$hsAe-uAIUa256k4LVo<;HzmKI^_eeyo*1?*Z'
    'kr#*?j%K8*@xu2to2-'
    'ysI{G)BhZgSUKsD~Ho0&!D5fk!E$o4kJC6`Glo!J!M$?4vh~gDVQm1l_PdB#H(t`?pWF#SS<O<Kcdo?w_6jPWvDGTm*IkF1`#hqhf$;KKS~HZD'
    '5J^;(GOEPgJ=@WQ8K{wX#j5K9?~<PaiI*wzr`?hdCGTvflTGa=i!Ao7};m5Xm*)@xZ^MfMb|o$lv-qpmiLL46hvtR{*AE1TjCS3+3<S(e(#jp3'
    'iljf){HvDP4$}ps|^1gDg!^AZaFAz(g&ACS?7MThZlb$?O;pFD3#qxfP88nkFJ`W&qnoB^tKB8y-'
    'nn}n2KALi%D7KxnvV#+b7ZD8}c_@iYI6#^FNwiMj^PFh1W}N#@8KE%@CaXTFXrGx-'
    'Con80+m3;|{Grt+4F0E8A`(FX@4R6|NO+J5?pLt>e3QB9(=6*OWK13%-svuBcFuNZKqe;=>%PtWB4vsCjy%T_M%pcWczqC@(6ugI-vJMYNqag%'
    'jjcEL}ZDEl5qo2fpti5i7DeVQSYSA1Rr)(X_O&H}a93c^j`RZM+_tcjwk8O5;Y)^h>^ur&&@7d|28Q;uI9sF#RnML8AEW%eQifS6*4wmRP;~3>'
    '!uVyLXe%fbPxYRX;z7{O(Q+Si40VWb|mICN&s`#F~OIJQJIpIGa+VWD<0>eaKXYEs*f}85Db%J}`|n>qBU57MYXX!+J;<&+BE!0<qQ$8)#O`n`'
    'qX=aM*+#Cq&#&XF`;JAbauW*QHYY#a33oDuz@W#JyNt`k-HcHb^@^G$d1L`+O(7b#|b=GF)wFi@2)&a0Ywg26Xyo6ybs~?kXf{Yd()B6%j-'
    '$Jp)v$#w-7Ics*I(Rip-LL`{BF(2loc=DqkoE=BNov@4B@u2?n{b@pN~kZ(qwN41!==$!XIL|Nn#k3-'
    'hePlL`O=bWuMgUIPF()c6{rr53KniB07qp#;|RSza=6i}lWg}sO*`+l*qTlp%P0k&2>u1J2=byo$8h^kW_YZNPdDdZi~<yUd}oG9K_cu92HgLh'
    'KFt2jWTyy6C|o~O58CX#8H9Ih;ee<8v^va?v^&<4)I=mkGG?tMOJ4RjY_`<Fh>-4Yld^p6ANj!4`aBASNXg$sBA(l|}Si)ay&^h-'
    'ZZ2;oWKEb&uC?VBM~FJF@3Wk@and5CH-v=lvj;gSUNBnDk8VP3r~B^QY=E)rY}8<++g8Px}0|DEe2&|EeYfnUngd-WF7t__!JL>SA5)}DQ-'
    'P=%#_+o;o@8fm|$x<n7MFm;CII3BLK+r#?&DTRq2fb5`@n;H2GChrS*$jJ8mEqNn(L2OL9EGryagaWpbaZDr3t5}@aZDRCCF^KpzBF~NXM=z2*'
    'S)I%!O}z?!AQu^x$%@kuWOb|PXt<G*5-v}YXHP?rNBw;~KZZn$r&JT=r{EY;Q!dD$gTCqDmOfD&7!!egA1?s${(Fcgh882zsqlydgg_R?&YXL-'
    'gu(hXv&AMBOhF`>1P~h%B;1u@MFQyWhSDh^s{nwyD18D3;dM)vaguHQqnIj0H{t5Ef6z^GUc3Nz;;N?XKYNztw4{Q(`KG!VdY*Q1uCzv(QPnRZ'
    'RiiLwqOhMpwED8`1|+?e-J5U8JJtBj5*muEg)eTKl>WD-k?wQs@6DLDVE~#3^@AOFm7x^TyzJC-HcH-Tr+>pXqYV4$0UL#=mNAv)58g0KiB{aK'
    'Y+7pa^^GE3TZe~S)!@k=zrcAm!y*oYyGgLxB;x9@_4`5Vtn+{&a_7y$5C~?E$k}_Hwh5~$ROU9*Br&&T9uS!2p=DuPLR;k^pdi~b-'
    '~m?_kuAamTc?NT2PeHj=K<5jxZLYxQYi~-i=r)y9B@S6zO!FmTYF#yPkX~-N+6i+Kt$GVv<6oD!a@)hIbm%`p$2^0Wf-'
    'q>+Mbv&OFawgP{GB>DuaZkCkCq3NTcrXvNQy{t-'
    'cGb`E!V3_%u$BFq)N0eKWNQOSFpvG_=M~3&6$VZkQr0aTU)K*&UgMD8e`BF}?`K^RQAi@+sl=!%_(ty$bD4ihF@MatraOb%<z_?UUBQhg_f2sj'
    'T<LDQv}*&<D0PKsmtJE!NB4cd7-&E6BeD8N314g98pKWGlh-'
    '>zxiegW=P&1f3i*@`Y=wSZ(~m1)t@g=TGFG+{0Sc#XubW6z~um%ds}|h&+cX*`G4yI>GbB0G5I|s%UWkfmytAqXRH=zXz)*UMFO+oFt?YzL>or'
    '(c(FTK$CPuN0ii9>cA-_ZVGN&(#aH3?kUct=&STpW`p`U&ZKmTp7K~)H5R`^X~h6I3+I@&Z}k*wZRxgj*=<ApDRuyY9GrD9$z<p3&tlFN^4yb4'
    'm+g(8PSaCgcP)q^FuK$A^*CJhF8G{4FM%m0IyS!1wFr566yDBI-eV<YAthXLETs^!Jbf7JkUhOiaZLLAPlmGMVYoZP3Zs!PsI+OdTL-'
    'KHgciRXu*^ab$O7Od5JZE3@dDk4(~tf;Bj^D=pTm_Kq+?)NE~gM{Lzh2E8HPkAE|WB(WdUH~k`kRm{qws%jy^GAmsbm(>k=ev8Yc-WtLDk1bWe'
    'kC;Y<8JZ!j-'
    '}9dmzkdF8Y7Czd{WT&7&oc>!xK8}?7Zpa;X=Sq{dVZPvk4A@JN+R0DrHWZIc%8dCRC<~$442T^?9Vo!8~_4ReIy5k!`AOIkyDMPPAxuriNn{2O'
    'UL2-'
    'Ew0cJK%X7Wd1MfiXFTt%;8q(bnToC7lcjQm&%yF3n(jd)+(&i7anV+Kkz*qq~8B!Zk_jy4LOrxDMaOjQE&rNSJo@HF|M1)fMtF2ZT)*2j#>8|Q'
    'R0$DJp2<4MDvPtIamrZg20Dt<}DeKLf@SgMjZlxV=Vx-oqOhUMd6fznU}AG*EPjxSQpKD|805?FZscDz_8KJ7Xi%QmD1jnCYn8n7-q-'
    'qA(6$rPg+gSs`jx7w6tA7vhD!#MjB6dalMK%0io_F?T*)qPj@t%=>{?i|a)F8h76L#R~utEBgZt6mHs-tV8cdvG^AFe-ke484J9+x<^VMCnYve'
    'Pv@C8D%*!D|x58N;_3>W2>;*=-zJYt!e8GCS~ofS<qiI?+@xrJxUecl7GuXEcw2vfB&z%dp7-'
    'Ff7N=df;Yc1Vo`(>A$Mi;*@88)i(7A#S}+z~uTfS{-'
    'hJR5wXFNs;Qi43U0z4*I4sYpDY4G3EIvE4nF0B>rIb^^Lp)S@r$wgQDfz%p0=!WhUIyuh1=aWl>(zz9^kFUbv&<BdhiREDWXij3guIi(GnZ!Qg'
    '6jZ-PiF=;v#ys=RcW%GgEyh3XH}|xu|DRY%bYMWN8CCCLDy8HE8UI5-'
    'pXc1q9EQ?)j}QHj~wdecF%CdKC~8hgEU?RGmzc@x`f&T>KJNH%EImWmp(wF0CL{@&hY%WdwAGkR5Gs9@Y3U8d=A~Pq)1Ewb|;c-'
    'uxxwHj4_Xy8)c(jA4x7j7Gntzt-#WucGfanCFcW7dB)#<AhPK!oP4hsc&u9H%KUYBou;5=gF?Q7CDbxuHBCI<=05~L#is-'
    'y8Kac6!QO3=n@eh+fw|2PRkI;zrV;y=TRey`VsyIi%<<PSdv8IPfzV(S)D5oGP{aMNDVYKJf}7xu+v3!G4`;IkZS_mYCN!tEho?bc40%+L1BYj'
    '@F)AVSkvVzCnJ>b1x1AXtc~^p7Zovm~S;6}|GHvH^{Ee)a@@<Knz_hV-!fspk20Sbqwb&dL<)`LzNN$29-'
    'o{uaF}UC0>AuE6+f!9<HF(}+L!QKNg_$8C1sgs8*UV>QvrNP6GZ~A2n>L%aMw=SF*XTK~Qk+D9dA&`>d)vHrb;lR8ko=r|kItH2y){P~2_|^|#'
    'vEnQ7$(yY9`wfWCwvNGYDZ7|(F9gedbwJN!DU}DCy*W3>p%=N&$-Bw%=df3-hB=d$OE|Oswrpv(%Nn`%cq#+ScGNZ{Jtc=w-'
    '!@*+4IV+<uY7M%?h8xRS1su%TP~^{HSZ%y#JbxMKp&+?0{=1OO7G!_wsCxa`QZKqlJk~;(5FRFLQnyA5O^_&ft#b6Py7ER!nNC{=elFSRN>OFd'
    '{2$%+78QEyR-ottENHlxLgVBIBexfv{aKeYotXI}WWP^9aVfJ3==MxnZ~WJ4)tvcDKeZ_A9%#1lp`xcM3oS`&(D8kE%XN3q3QVmg-'
    '6jMN!i+F5?^W3oHQ>cXX>Dtobhh|2B@P`hATcFq`F*K^qDO`uVt{sDj!Ffdj$=Hl$;6uRWiHDJXs-xqyv4{Cp9Mep|NNoz_$dkWMaJ;gL`99WG'
    ';oF(Ax?8y?UD7#T|<?clPGo9t~Q-'
    'D#Zibh$o>Y)e?*Prz*qrvc^3=lm?5d^?y&*JIUP01I`fq?n|w)ogtYfTj#Wpu}lFsyImLR4Yd(hn=G%1UWzJ9eg-HIO%?DTRc_gQQD4DoH&x1v'
    '5WK0AM0Qad{D3myx_jY-*@=?CYq*~_}66!_$)OJl^rFW*-XAi!-5z+1Ce{IuoZ@x7bFb{1w#}kuXVsy?8lNZ)-'
    'j_>K9K|`2R;XIl40FX*Z6`<Hxr#9ogSYX>)ZzCzilUg3tZIEkDdPjT+0%N'
)
ASSET_PAYLOAD = (
    'c-rd>@N?(olHy`uVBq!ia0vp^0zmA*!3-o-'
    '7PBv5U|?nl@Ck8UV`TK<#|(y1FbYN_cocYZKadLcba4!+n3J4vfK7sv)4<4RQK6(^>xB}dMXytiBuaYv9o#U3<9aaPg}Ht$`3qxW9=0T!@i8(P'
    'I(k@!9uW9!+xD0v+N;*#uYvP~AH`ywiEdI148mOu^#VRSSwPl!y85}Sb4q9e03gsYmH'
)

def unpack(payload):
    return zlib.decompress(base64.b85decode(payload.encode("ascii")))

def sha256_bytes(data):
    return hashlib.sha256(data).hexdigest()

def sha256(path):
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
        root = next((p for p in [start, *start.parents]
                     if (p/"Makefile").is_file() and (p/C_REL).is_file()), start)
    if not (root/"Makefile").is_file():
        raise SystemExit(f"ERRO: Makefile não encontrado em {root}")
    if not (root/C_REL).is_file():
        raise SystemExit(f"ERRO: {C_REL} não encontrado em {root}")
    if not (root/"graphics/party_menu").is_dir():
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
    (b/"manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8"
    )
    return b

def install(root, force, dry):
    cdata = unpack(C_PAYLOAD)
    adata = unpack(ASSET_PAYLOAD)
    if sha256_bytes(cdata) != V2_SHA256 or sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload interno corrompido.")

    tc = root / C_REL
    ta = root / ASSET_REL
    current = sha256(tc)

    if current == V2_SHA256:
        replace = False
        print("C: Party Shiny V2 já instalado.")
    elif current == V1_SHA256:
        replace = True
        print("C: Party Shiny V1 detectado -> corrigindo paleta da HP bar.")
    elif current == BASE_SHA256:
        replace = True
        print("C: arquivo-base original reconhecido -> instalando V2.")
    elif force:
        replace = True
        print("AVISO: --force-replace ativo; substituindo party_menu.c diferente.")
    else:
        print("ERRO: o party_menu.c atual não bate com BASE/V1/V2.")
        print("Nada foi sobrescrito. Use --force-replace apenas se quiser substituição completa.")
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
        if sha256(tc) != V2_SHA256:
            raise SystemExit("ERRO: verificação final do C falhou.")
        if sha256(ta) != ASSET_SHA256:
            raise SystemExit("ERRO: verificação final do shiny.png falhou.")
    return True

def restore_latest(root, dry):
    base = root / BACKUP_DIR
    backups = sorted(
        [p for p in base.glob("*") if p.is_dir() and (p/"manifest.json").is_file()],
        reverse=True
    )
    if not backups:
        print("Nenhum backup encontrado.")
        return False
    b = backups[0]
    manifest = json.loads((b/"manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {b}")
    for rs, info in manifest.get("files", {}).items():
        rel = Path(rs)
        src = b / rel
        dst = root / rel
        if info.get("existed"):
            if dry:
                print(f"[dry-run] {src} -> {dst}")
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
    p = argparse.ArgumentParser(description="Corrige a paleta do Party Shiny V1 -> V2.")
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
    print("Party Shiny V2 instalado com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
