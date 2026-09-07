#!/usr/bin/env python3
"""Instalador standalone FINAL do Shiny Summary para pokeemerald-expansion 1.13.3.
Aceita automaticamente tanto o C original quanto a V1 do pacote anterior.
"""
from __future__ import annotations
import argparse, base64, hashlib, json, os, shutil, subprocess, zlib
from pathlib import Path
from datetime import datetime

BASE_SHA256 = "31f5b28efef7d3cb5e36c703ddc905207c3586c6cf245fe87a3ef3dd498fa283"
V1_SHA256 = "1b5ca4a4f7f385c99892c721f474b52fefec140bd122b93df6c9ba54739f5f5d"
FINAL_SHA256 = "f0295d0b81ec85d5c80891e0c0798ba93808a69938405b132123ad0ba3db6ee0"
ASSET_SHA256 = "d46394cac8db1cadb7062ccce9f3721ea347695bedd85563cacc7b78ef17d004"
C_REL = Path("src/pokemon_summary_screen.c")
ASSET_REL = Path("graphics/summary_screen/shiny.png")
BACKUP_DIR = Path(".summary_shiny_backup")

C_PAYLOAD = (
    'c-ri}?Q-KdvMBh!o`T&cw%e|jZAt#D@>JiDWZ9)@Syo7LRoAKYDrkw8IYp7WB;}9ksf~SzeTn-V_f7UmHZuW`0119bCD-'
    '&hGaWPC76BxHL?V%yNM!zp?M|HK)G~gYIo_@5?B4(Q>OZ1ybJKR!FSlkGI+pI+*mUi=T5#ukZfINncp2J`w$0oM0&}K^7g}zpEx0o$q31s*%4X'
    '{C33P1*q4wk0y1TO`iL$8~n#nKE6Vp!&ZfZ@u`ND^BC%!+s=G>l)7mhix?mcG;(+;htP&0Sy0cJK%_cvQC$G$a70G|2g;@+MlzS=Mm-'
    '!((qb4_O)gud<0G+o)DHBWyT+kgo5vtzqo5^H~8CW*muyh-Al<u21-'
    '#`l)9u>8c3=bk&BoBkIVX{zMGf|)y(>ARM%mLXPQYQe;}ti+fXrXN0!(?eL8junQ9bz68}ETC^E{dJzi1^+k>7CvBW{9p%5)3N`a99dKih!JRb'
    '96SdpY)5sLbC~+Gb{eqcHlb#reh((53(I0@sWtGH?lkd<hMVqxYCR<?W>E_(NGwih1_{bQvQB*Q?ZoyAAJpHEwmbD6Q@b$;O*aho1UEoBV6zRf'
    's^Zovs)ID1S%{rv7G{xDT;t9$XPM38r5pz^K=?bm>g+bFDDe0qyxQ9{hD0$&Xaj-'
    '*V{5s9jb%92UAX<~Kc?0l(1+0<4#(X_v)vtk?DWpAK92iWzqK!~dgD&-'
    '{AxVvjJj>3T3mbhTc_I{^7^&x`pw1&YK$+hKD0&cdUoyBRd3WDj+E;AG_&S13_aICp6q*$fm9{t2jq00JHf%#Wq&lj9(B5%(I?};0C4Y3cZw+b'
    'arkJ5llvbl#*ZEM&V&C#f$?L@bSIYcqp|RTeFNzj4JYu7d)_F#hZPuDz-'
    '+7^S^dt3;K#im+w||@s4*HwO%40b=#PijmzRyfr}3~gXt#UgLA%$uY*W)zS?9yJ{ec$4faAmn{iRhg-~?G9i9A@&bKyj(?IF&x1w(-'
    '2&zLNIA5IY*_}nsZ+yZwK3y+3k<PAS|My>b85kg(M%fOmuH@WUz58G!o<Cqo>(P}VGR+0t*JEKO|I4MiApZaa%4I}?Aw&Mh)d*d`r3pVby&qqe'
    'BO2pBx7>zJACtoVYnRREmfwdyALFeK<K&v6N;bJ#}hJSO2_`}LWV*+sd_r6i9BS848V)SqWbU`?9RvOy%(5SHub%~s<5LIj=_OCv+2jfPoWz=Z'
    '*&~Cu32ofLL4h!!Qs0j($oB*|%lV{_>be2|71iI1hw;SE@UmKT3?XZvx2kmaVG3Xh!Bbr0w7ACQGYdPK{9|awtKL_xaANr;ZJfe{M4Mu}TXEZ)'
    '*|32<rUpCtVqjp@Pey`K|jdpSE1W_`A?%9^Y?Ny@vu-|TV+OQmNM01C5SkRo|q4mDq`VClxQO{x3KqtU{2Sz=IJ-'
    '2&jM!o(jst_?FMl!5!A9mxLR22jtm%~4`s<zJicH<1FhgGW8v~|t~jgJBhP`S2Fd(arRqrUc2b%+^U0>MXh4v0vAmwT=~F&$&b<SOI31H|iieq'
    'h{rJ`v6oBu&O0cWG|`T^qsD2i*bpNN7GAuC)Y$a*VB85ZS-'
    '%P3}#9;+f9&sc{Qr4rlq4*fmf;aMS>I0s>kr{e@#0HXH*kYA7UtJI{t=&q3^%8X>Sol$4FY0%5`g*)Z6fTClC0U^g|v>kh1YW6-'
    '+dcrpeT&8>rq0slMP*3~|141OD53>u%J+D8=w{&%9Sec3sSD^u+^m0Gn@t7~g_k;6sxv3700Qah;Bj`c%nxBKc)>J?)j#;&d1zaI4A<Tv7>)J`'
    'h3!%BTWr}}vKz5yi7M{XQvjeO8PGva@+_I|BWuV(>=>H@Mf7QjnQTfN!6ZmZDi)k^)SvY%Z&29MPNI3N<1hz_)SZ;8s`&aDuC97eIA3KOM{=tQ'
    'p~g&`eVPk7vWAQ9O>XpF3Z+CjCR8y^mLiOt;EcOeRiro)s%i^D^3o(sh3TOg7Of(L1P@@3|u0>L-UuF?0s5Tp^H-'
    'vFutRZqlz!Y$Bie`pU77{OUUt$WM2-WrehHui<*7VfBkeW(~f|JL4}h5r#?Xvc|tRY6#Ivfu=JX1MgNJ>Yy%*HC2-'
    '>ne@!>?hoj6W<F015QcU_0jg`c#F0)$dj<k*(oyde3Z33m-c3iQVtshALI5}pq-YWk-#HJ-y~{zfn@|JYB@_#N>QMMp;-'
    '%>H%t|=W4oY1(JJlCy(tV1bgCuv#u*j$(xRSU{qYLvX<0jhVViyvnb2wUiFi^y{ynv<h4c&H*W#aob*UBNUvqmJ|8P*YmH{JgI(_x^^wld+d*)'
    ')KG)NjQAE+Sl)>ZdvFdn^cU$%h<oHwq!BjcS>tuQ$<^p=x*!03O}s<o4PP0(v51UPO-'
    '?>`MkmCPE=>%ql!@9a}{4PbLU;$6eva%#c<2aWDoC1*0g(5_nTMlZWg>k5RML3a7zYS{jGb(PZ#9MYYOtL*Y&r~4tVhkj!?!UMX~`z^atxA6hQ'
    '063yAJGrQBG(Qo)%EN6h2LK3qt@qi*7gu@sZe3j?Y$QBMvDx1_BzlIwQPDMF6UT=-J6Z276BwuwI9>>QJbWbm7-dCsX3-'
    'ICBCo`g*_e9l<fd{G=5|Q8G|>2AhtFK6V{G)+1CBg5&<e6JCZ_M(jD^NL1NMjI1A|(4flctYXe!3jUhQbRVg$rrfJsbDmocs29;8+pfDeN<Zyn'
    '+YCgZQ5?;Fb#BanGR57^5X^a*q6gr9Hd#Cd0ow|;Dbr1azVX^F;-'
    'xfR|&2fQ^krcG9^b#v*@;9z)`TH^*R*Z9(&x`<t=F>J|lZQFoZ)0xV1ZeI?%XXRR-'
    '0eiffSf)$usWt87a;;k)QU>puwZ@G;DA#%b$HJrMO{G~Q8z|Sf<4*0Fr*sV*;^L}Y>!IyDBnFQBqvXK*CY)YQ-'
    '*&$s1Zs_JrCj5#`Cz$I(K$5+u5(th>!x}8+=LTeCNp40Wy#DHdqXrvHdS)cmN~hPTC+(b7c1BL!iz{$v_>X}jZ>{(v%gY6g3p=U@Wyz@PutHq$'
    '89|LOx97!1|m+}n`|J0h2%gHr*aMy!Af$V$S3!W9*W>8IZ*h?o`)9BT`GCF6{r7AHf}kS$pOOz1c^ejxJ?cWAw=ZhR`8r0C`{1E9SLJTIWU+ok'
    '_&^epd1*Iz;crTBW6T7a1@#5Mhi#qq&&J6BF{}W-'
    'E!WPOSipf7aCb~>*moc@tm7n2*jy!Kp^8O7zDDbNW$vw4GhqZV6_5Jkvty|wae9>&KW9M9-'
    '2ICCQAiSk1I4N$$;Q;%2Y`xL}0hR_ZXn6LvT=Hb7yE+@eD>YB=g`14Um*T!2uN!v@e{I;Q<K0Kn!X<PaNwCL6>2cIlQv+Z_Q&<nn%7g|7X-'
    'oz9vuQOl3Slee|si<-ty<8asy2gZGT9=CE_tY4moDrXB8p-m-IR(=Cnh;V?2!hzsfxC;dBvbre~uDhB+o4$20%xS`Q4{zdjT_G@4KQrZjSVns0'
    '?Ruto4MK%6a6#E+k_q8IXUxVq3t+Z<ly}QtOusxXHo?|=a!~jtOxeag~X4BYVrJxy^Q(z&xWdxNZ66%D6{dl7FcuEH}Z87RYn(j#g2{30Uc*E<'
    'Qh?%iz17tvi09QLA<DIBm2Lv5e>W3*b)Bz2GU+fwm(I&WOcu%(u9MZ<49o`%BC7RcKIJkEhPVPahA!AG)5@I<kiG+QH5)KtgI94d(M69{e{tY4'
    'FNX)Zdktm^dSV4=Z_;sQXMjh}`Ck!QUun#y89MJ%dxC=_X=NPW}@XSzP;;koM;<$i`1s(c3!Ix*ln$GezgDNFzc0_6q9LB#6Vq(~*8K0zg#8Es'
    '~tN<$>VGhV4+5-'
    '4DEPgFU8QPfNr0{S6c;GxA?*^>}+Am<@#*D7=_l(f;(SGRc%p5Za44{!OyCuY1&CK@|UT~n`;Yi^H$7u?{oe@*OA<i|TfD_vMRcYqOF<QuOPk2'
    'ep{E&EIyKm5829u{t7z>Df&zL-'
    '$E|Gz^L|I@txkvFKviYLDcek8)uE)c^f`>x|5621~PIP#XC;(@>ui)WG#lxGJMFJi)+~5fCzz%F+iF5S9G0gcbus{-'
    '=+`n5DIErkCoAWK#Th8vu$Q4`EcZ+ol4M#xE7*n!D9mj-'
    '~ddv|H31dl)Akhqv_eqRLSaRS2#}Y@_k2z@lfY4G+;o%tYAOsUm4S)sz8SpS&2H`WYL&G;wB7{Q{2;`QT=N9OWRz^e8bH#myD;_9Z@krr{$6Bs'
    '<664@l+69MnH0(=AsKqA*A_2HV8VM(W1SWfdPykdePC&N#Ib#gyBmnu^a;!;+Hpb9f6fs7j;^~EieMLw(RK$Yg__WlVkB5kaXxhhgK1Q>y(qV8'
    'cNeTNj>j)<&m3o>pya6OI0dv>raWQCurvr0u4Dq;}EnRjpZqX&n!Uw6rHHM*OMIzJoZn3hekrwKTv~ZwE3x_fb<jf)|EgZ{?5ow?%F@$|dS~x@'
    '+i1`DcqKdbWDWM64MkX;EC^5rHiO!F7jV#EYUn-'
    'F@#$+XCQjYGHKu5dFqYg#!E+aii@`AKaV6`<Q0z2bS*%`73#RN%tV;sat*{>0a9HfzgqNLCe4Ac<t^bGKN&<rDi!El6<56b3UDENjjS?#W1Kqw'
    '#+Nsgcm5p9}CYF65xD5nVDCi}`ZiO-'
    'Q^WSEg8fnr2ew`*!7R)RKUpf<E?^u0&AI>x(E#y&`}#>+uEKzCp_J(m!zB`Zi7aq2)3ppN3bquDKov|HXpyhBkbswx%^h!SejZaJvbPtsUmf@M'
    '$W7n~60cqzLF5`=l@nRC8fz5psvuApthTqkkE>=xN_R*|jtY2p$KIVPke(Qpz|%rVJUZzMDvNLV2>#8?3|91>QNXh6A=G+R(GOn)x$upp}nAi{'
    'L!o?9`dHpmt(sJY}LAbeqfOqk(ux6ml1mn-U7a>b#-IgZkDCJGLUrtwD6G*FqSO045B-'
    'ZqGcs!q_Xp`?ih2_{uAe#rF8ndfkg3seoyox#K(5nFV$IB>9*(z}>(O^=DHf{B`fiCU~KAJH!r6E&2n<b|(R_7$1xKvJ@fD*|WrH>hezJA<3_`'
    'j#KSYNI2l@PuLxp>#KDyMYa8dEfmw1fJP`f_j1Nxx05u^tkwZL%t3Jb836SofHlr@6inmUZc9Zd$fN;_nHDc96>%_sfNbU0onMbo)s9b7a}ZX1'
    'tgLK+WR}~y~A34=k__IK`@(QquELOLGc3|81#75xTub=&d-'
    'PK5yRWjK|%GJTKzDuItU2E&Q&jNadebhy@Ad=68NLzqOlwDKh>wheI(bPhd&ohBH50-'
    'GJhWZTw*qHyR<7F;GNZN|2}H>XzrJdi%yI6a&U6cIy^qyFVigQtoDj%?~FZoG45>3nZ{T2eecWv{$Id{n3phJ$;+;aXN^%qcq)>6-'
    '_@XV(djk1WAvfy!NFh6uirUK_@<|70ELlPcs;)w`W13d^rES7C*<78aQDjh?e5vQGiqPv%!5}Qbec`TD_InC=9G46u9xv>&IG|6nfF)pW0t|8-'
    '!hSB`)N^Owta`(mUD2~q!%9CMH%@<i#^5SUl6sDe`K;pbSxgDYwj=ytyHPs&p{>CIBO4EgHC^hv@E&FQrWQGZMQ~n2n_oJSj3@NoVZhTO&@n!='
    'z>jEc#W;g#_wZv%qACT;}_ukh>XZ@g`Vbg5FdyZykzM!$7aq~*(;ATGc?HwOWbR)E*gUYkUfI0Xg)U^-'
    'LCFC5~1!p^BLEb;M^+An27^N$`79xRsaVZ{{Z}(zHA-'
    'P54MsuyxF0*TX0&DI~_evV~2rx>pWLL>7STT5`(0MF+B7#bbm&pFdRRIC$6C8LWa{~Lt3vIoYd*Lz%uBUtHO0Kwk+sp3Fq0|{DLk*tZUN3J-'
    '?{mdaB>Vuzty-E8Q9}a(b8FX)aWf4I*;wbkTs=AAJ&T`S06}!3cSOt-Ak4t#=MwqJ5@Tq<Rf)y}vdt1vCz?rR!Iz#_F9#*D~#o11QElD(+@7_X'
    'WRjd0l;~R$rs5A^Km%;+fjqcn$vwPLrig?<uNq>pfjYb-'
    'p5Lc0rUnje9wG&D_RYAU2}QtTEw#NOex2j<{4JVuFtO6G!%2s@sa|ia~I(3&s)GJFcqrI3}n(o-Vp>;sYYv3Qp-'
    '3>Zz(LtMkHoTzF#GL3=iPTjNCsYSHlCcAwwYPUWu)b2^17y**OC63^#A4&?&hzP<I_mbY|6UVJ1Mo3=BzqM~D^=$5?lddoR4J&{X6g7110a_r;'
    '9Z<58*kQ#}y3t%U_s2LaS*Nufe<=<P%ck5}vzt>dU66^b{aQqulQ^Dq9kx{Fqz~fZ#zAqLl(Vh7e7uA&_GyEb74wM4ehN9poK^Ib+lSGl!s*$8'
    '7OCYJP4j$iHijuZca_8HYI}Pq_fyVu+jGU{{1=(>#p+cfAIfaX&eHE!q51*?Ey5Cn&9+)l=kSID-J4By|&$VN*4EsmQdS8t?XJSt%bO(o-'
    'If7$Kp?<VJFxPd#LHHYA$%lJ3vK{o8Z!YidKvVmS@<_jNA#RaB*Ka;UU)AajZv#+4kBxo=BzE>eG`fsF-+G>d+q6mCE2;`41V1}~&!-'
    'rc`IP#Gq=o<!HEmb((R@mLWPLl{<O{$(cg)!-d*_62VYnkbNCFF=-'
    'nTQ4T*rI{{hJICBoClzCK9W;s|kq#Q#f(an8!}uieZHl5F3`D#D)kQ6ig5_tttBIb6EnL+U{aW<?J0NXrne_nrX6lsbEPy_KzrPM$@~q{UF3I>'
    'Z}86;<?krcX{Hl_1B+z<TvcyaRCZ&U>fZCvqASi=*#Sz$ZmJVm~Llhc7X86A%=QBv)COXf4a(?a8QUg;>R8A?S|u-'
    'h&5&%18K^092|+{H$4~q@E7>#>_hWJHZ026`)!b5KcB?Z8i}=^HA2jdj61eIXO{Q$%un0^*$TbXrGtXc>l!hMvgU*7+ukzZRnY7Jd<JnlF#{p7'
    '#i1DXaF&LMlz@nghz!Fli19AnFXKDdQ<i`5`6!+S94Xe!^PfAg^g}+Sc#e1;4i|8!J62Rk^5fAHzNYXzvNr~-'
    'MkK)k{oyp|G>rzMz+@T`hdeTaFC4DtS~~zG<W#W}gwF^!G=10)K(i<w69A+Wm(f#@4S5)?Q4RUbSL1bXnGml)-'
    '0WR<yC617;urv%b<H6BU|WyYR4@{J>2azN-mq(=nW5u_BX3|)6pXyesaGa6cTTLdX_98EQxMLlbP)i124LZ%o$lV?RioRv=(W$b4z>+_R}I&mp'
    'INYd7?Rnjq&kX>H|xOpVVjPEps1813WrMWazP{$#>Q4+EJkS0E!hYST*6yeu9zHquHc8yM5`?WBM!Xc8snqsPm#7Ad_G8v%jd<mQWtP^!6|*~!'
    'Lz5a<1+p-TFv?xC!x$hR}m{UFOo1=Cuh;t%Im7JSUAtjIC8PHrxqS}eRfe7Wc4UjFRUuLWGST3x$DtcplgWeNfFmM;2a_78sPU-gOR7Hj>pIV&'
    'vV7kl3iv}(=C$b@GmW*(ycfKw9829b828)!3i94J_|09XmaM8k4YC$9cZcE5I!%1A-'
    ';GagNz$$SEIjF7Ncv;Ky>TeH6B2g$Kygf0dMgPYy&VUx<Zv^E2*a?DGwGI-~K>L)cVS|W@~AM+yS0TUiuy4c!8yEkL5|C4)TgI3n|e-'
    'AtPNwSs*?js8ulnEi9$_rKffYi`tkz;DbWJXtx4=F-'
    '*;7{9Rj<;jj~YFdch3@{oCVTxwK=IyOF(`1F(L2f>h}hXG!lq|u?4x7}$@m9BLc78GXzzyW>)megUvQZx(aKO=p&pB5JC9}}zZdoyHYP1DzIe-'
    'bc89-Uq!eA-?KdKky`mC9@Z-kWe5`ql_=dgYQZm9xbOh($8z7D`305&IQ-L82qvxMS1`(j%28)aUXh`=+n2otfG&-'
    'KhO!hnXEz7#33FG8aIzBw4125vPm)*R)}pj?zpv<7Bj?Sphp>6XOC26YI6RS;9hYWwyR8)0Jvz$qM8^s1=@j{tQNO8GIxGx)}XRBR1<)8zk_4^'
    'vF@yJp<Us@Dq*6gfl}to+>DKYjFhw7WK2n%AmqwW|_`k&3O`R1y9H<*iox|;OsyuJ788j6SWM=x&6TO8LmaqDgBxTtEW^#FVL623|gSyPlwO*T'
    'hA$CpxIofL_>ZXg2Q}o;SK9n8kJp)FwvgP#E}D>P|Qd}0Rt<rLWUXrk?z}Mc*JYE%<`Ux9p+XkDrZKX3>4}phFam|=&fACo#G;ANhNd~&?KV+K'
    'YdW6R$Hbb$aa8#R;&5U4%hS<B!)Lc3+tUd8Cg#{>A<%@SHUuBVEIV18PE`a2$3LZ=1JtP)XV?`%gKyfc?*tauDtRFx4{;G;nmJ8P;l%;79V1kF'
    'BAjG>)XEs6z4%LsK&rCv)hn@)#++oSm7nN1@lVkS;|!$&k6_~mnIxtSC7!GUKO%Y`)zqli@0bu(2%UxnmR$p#nL|PV3($yw`~fRifZI66><W!i'
    'sV(u!edNP!^p;%K~wK7XW9v^dG1(aC|NX2)dum!K=$gQ^auLRa_(ktd<0ga9s@`MX&H#6D*~JEd+^@?Lv|6JWmXlk`h#B0jTb_$n6<kfh$jL|?'
    'DsS3NasjFe@e|lVDdK49^Dy>bF`Jg)O*YX%WGZvEF@nR#Wbc<nCUqXmYBFW=(SQj3YTcJ#Cn7tjZnx4`jRT5oYk~Y((*t9cQcRB$bP2nHY#@??'
    '7(I$F;fD5Pd1PE<X}y+0OO4VS|s%<EFCX6k=$wk2AOJMm0~awEfiJd%PgwpE*Dl3Xh<&ElG(ao0vC5rC<jnIjSN9blhRJ0$IWPy91hiLHOE4YP'
    'h9CHtB2l#*F@VQGt%X)l6$G#2^S5A$ssV~HQTdhEprL%tZ6#VDy@bobGL3{*JO#+)Me)&%A`ZQf=D3_4n|>kNm;73C_KXlW8U*>jhKFr-'
    '30IS$QG<eK~}@QY5Uj~ZSkGylZN6lo8ru+rkp<*Q`?+j{5aC~(PuM@FlE39tL;u~f8tn4N@X`PWuct$?n^-_S_ztB89*FWz&e@nF_X$-'
    'CO72%I5Dfpnxb60U>oxZm4gpl5+qZ(F1Pq5YyM_g3%S|{JQp0Dokli5j`?7ey9$krxnJi2<WT#?ZU!Q1c2Q*(+_tDz=b`=3r;tcRH6_C*=t<f('
    'TA>bm$ds<|?qXnpbT65W2|p-$_b3v0_I(C6?gs%kWHK(-'
    'vnOBN49OK|am~U&@!<#L+%dJZ!qB}n`O<mFo+xOeN*!Ut$mkglCz6^;dyY5~JIyqM_=uDVSV7b&ZUtNDyWm*vEWEFfAHywPRI@)3K+y6$fBJj!'
    '!zX~xO?krLPUE2t(Dc5g@u;e39Ft&|FXtJ+IuDzI)LsixY86q~ymBLhQFN_ck;3+{DCoqJpXlGu^luEs4y<k>%IKb_GcD@nqaEI#dt|BJKyPdn'
    '?*N|Ma}4bQ^<I!?{R`hjTP$C4<){L|nhgy%)ySH|X&qYV`?jS7N#NEJUT(Y&`Ck?062pGTqkzvH7j`FJ(=*a0TH;1w9Zi#E1}k+j%v*|(3#b>r'
    'z<e9izb%8%n&#1(ga>Uvh~_MsXAu7#e2xP>#GZG%w=;@&7=OTUbxkv{q8oCl47aINv|p3T*wygR{=1cE#2-'
    '5%=8`48?fDqDPW^lfT_974Kl7(D$zj)WhF#AdcKtYO*tJ!MU0Y|^^)-imxUpf^*BSQyn!|pxv0?8Q4V#5Xp-sR~l~(9Goai}ULG@~O_Y^y}krV'
    's)K=P%+-$#kx$BEx3iQjKd(*at@*-'
    '*Iyz&&VmdaY)sH@>bNZAJM|_SBpjdjYi?hpgG|t?i~lx}_(Y=nOyAqCKyc(SzAqmAwFizfN%UtAnqX1Aka81wOVK$)80JGgZdKYHiA#F=p+?QQ'
    'uY8_c8r-'
    'a9FBu*(9)1=e*$xy`y(geDlrXLec9yhA;M*8Q*eej5~3bMZtdf2Z_&rE|E+_eHWNM4>$>;%&RXMd5c8Bqdg7paf8b{{NAF+;3}`++rGD)L%~sE'
    'dpA+^i}?g+OP@=n{P^?Fs=i+^t#oFRKmVi-4htrwNucuQpViTE5d|t4TvnS<y}rtfPF9-GamIvB-jtgVa*5SuQ#)bLkq!=w#nW43W-'
    'cP<TwNezHE{6?cmVdu|G`jAb?EHWK>vIe+SqwU-'
    '(%lOz=xs05Q0r$uvR@RheDQ^=Fd+OwR#bo<!N(Pq=#D8R1P##scz=H*gr0LVo2$HUUFKslYhp%@U`HkW_9#}vpU{i?R<~l4zD=7%%kI2GrJ?*<'
    'c?N8<g0JinH;@p-W1Q!&F*kBvnxFA(>bCxwPv-'
    '0(&zob%JVutTz%E9hZ_=PlzkP=tXhfBySt_17$;RY^bDRei=zCmvKtR84Aj(`+7o(*5O|I~Wg&MsP~Jd~qhrwP2?EA#Vpdwi<PnT4OaVs0d>nw'
    'bbzFP1yL((e+0MslB9+&Qgp!HPLk%|HY=lhq_lu6qWD2pDoYUcE=2TYJ<(bYl#iZ)rEZ8VWQKocKd~Bw2tZite>SY&dWqIwOx?gryA`{%E_*1>'
    '?j#^!Ptd*V=Pfxe0IUT$hmpDjpi6{-^4!x^mPc-qCCr;jC2N-8O5Kl^7)Azkc;>w)U)3Yl94Xd!MzQzn6B2^-'
    'd3%%V8ba&fhzG`vu7?Jvg?jUyace=>sx8jy~!xX_o)Xg%bN;U%?hKXgkN)7t0;d%yd#}Ac7c~w6?HF;oC-'
    '}B~CC=<ZxU}Vgk=f%D8i*bI{1H!s&bi1qan4>qx$wltKfl3D}o`tujFU~_)V0`JgFe&5d!hXV(K#qmcq}bzEo*Ru3iGT(Odi4A+#sj;6kHgm+M'
    '<-8*C<!dMk2duM6y#e|-'
    '+Xkl7MCYqT#<jX#8|bXYWAX{1t2y7XeAlVLe;Xil`aco#v*{6QNTUgJqm+%1~5P2xACZb+3z++?N=pDt?Ui?otI^6Eer_tqH5-'
    'bY<M~mKohxYQ%ApUD#x3diO$ZI6=7>rEAytbs=V@1a;Q7=wV}W^HJMs@bH-'
    '884p#D?X3bF2yjIwfj8~S~l*zzmn^H#)DrGs{=J%r}0^7=L{hu(clXBBq+uU>X{mngx)m7%Sj+N(ll}YVyW>N<QTxVsgPW@mdesi=L=6O_GhqW'
    '-rZi%y`LZzTAdF#PQdEgV1GSRYlfD{%bix<Ul09T~!!&SDcR*R`sH_nB4z`{*YLTN(Cp2|rUB^;KSiWFIKV>U~j-KJjM2zejXjx)&{-'
    'LcV&k7ok9`MfW=f>l}Ubm8<<Wihg)pBN-'
    't`iarwrJrxm+d=w`p`mLsG)%2fJIDY)g@=g>93)eG77Kb8X1u|iVEsO`eHuHzl7sot=QlU+KE8*89BQ)<wd&0~7BW0FBn4ir%HYjm2TSm3wVQX'
    'J+THHe$BOt;PXpvrQUTT&K-'
    '6JnfcrP^t_F?XMLPm`kOIh1VyH8&)fqtGJ>hc<@c8B(W(eP+$SVoAls@Q<JEUm(_H=5wOr_q|cqRcwG%00wFuu5Z0+Ki|Ub8rd!_I%U#|KS$Ck'
    'uzAlWcz_bIdY;?;hMP7C-XP&L!I2Cfi9vC9ldYk$6&ieR{rhDX;;M@;38GRs}waN+#~EQ;$+BiHht@j;gA!|B{tur;MnH^x7?1U-'
    '5T{8pzMpO3fG@=xMg`V~?CEr=Qqn&sq0)vS`xUcYcL4*T2@&(<VOkWDjE_zC~y6c<aYMD6sk0KdQ%H|6qyf;qQ~LKW<YXqlIrj;O3bF05pN<L0'
    '{UzBm=NP>_mVz&KiT?#utOeC((g8`b{VB43k{ISju(IrGtuLE|_u0dDf%_M1x!WexPeUd&@8y!PzGe2RbdI`gJe*yY}_}bfX`2`N#fOeVSL%Md'
    'w5NLqRtZv_wDIprwbUn}SP}(C?SRh86%W=9oQL_z<-'
    'x<KDP=JsMs0zLFKw=zJ(>PBYAdK%zSW!GQIB?gS5lplQU%^t%(||NDRbUjvHliG`LpisCo1%{dEYe`0L8ricCCId*8mA9EHr5Fd90+Z4$@BJ<i'
    ';Ooj=~PCnOeD)IOI_&Y|mx59}g3uV7gBz_KuW|S3Kf*fz4x}fig?f%^~tYEVAJ(>kfaspzBmkIpRn#OsmrQyZE4+QYWWn<9pUNP~71BU}R2YA<'
    'e)Brz}fFB9q-3A=9e{CqhZ%z9t8+aQ})^dF1Lwj)9?!Ld0f&bm|;S`s`6E`l@*v7_w75+(-_xNow71q*?(QShj)>AD3eZO^j7p!<+DQ-'
    '1J?TafkvjF2|6%LdNXzidvDmzrlhVMJQPvc=9z<1kJe)K98MW0nVZ^PgRakTz=Mm>IJ;0}WGpfljHpbtw_=RwFz!Fz4gxAQ@^+HejH#=jc})lw'
    'BdVUC7Z#ObZTqNtNm{BF!ZOYc5|=*<XM0^tA{@ppvLE84AXyuo2w;qEJ7F_!NpQg_k|y-'
    '4AleYAsn1h0NSE!FnYcI^?cqc0c{QwId+B&z{OH#qb_@GaxWfHTXt;Y)3QuXcbJQJBw6d_+X}fD!)zPF2jAOSd)AMGD1mbom3dpBdDhXUpN0EE'
    'dIcj|sk-oEh!kM?7T-'
    'EsAkO<30D5K95a#=Oc5(yP^qZpaU5f_O$6Z&xqtqH+me_?gGP)vK2L4&!3x499`32IskQMxt32lKQ%yMbZgi7`!*@_?Az?tggLQ*hjy6cwfH1Q'
    'enHHnYRTDuzn<glA9V_SrVl83MIgflF~9sn0%`C+X1y3{@$iTif0jPHw=k(``bjh^5R&IEh9jj^&54;aS#USt?>vrRn;sn)d%{S#8=9y>r#Mee'
    'j$7)T2N={1Ocdo04Qj1Bf-7^5FS3k)|1p*U$K6VAnRY=sv|aI}1tj6C#^tzie%|R(5*A*`yZxJ5<Er`BaqntyDQx7sb1yJqH1CY_Mt8`Q2=4-'
    '|#7$6J6DYqo7gii`9}cp9dy6&@*U5IJH(k5Hr+oW~85XMQq6q+?4XW+YqM^1(KjTtO7AijaCTwK(H7)v67<^=)tvT#FwzT+D!M0@IZ}d8st;@6'
    'V`Ji#x-m1o#tJH#ntb&uQf?7RY^4IIj{#JFnaNI(Fi-'
    '$kLu##DG$eL!+Zjc^;D8Dl(6W48&MfLKc<yZ1(@qW^71F_C9lYsVK4gz>xI4UvIItxXs&`E<snVkVcd*+~`5(3EUPvU^K{N+6VKrL6;(k&@;au'
    '8##Xh#(9IdzBNcuKI}ne-!TXq?N<lwutRehvTI-%ImfRczFZO=YjM=;vx9(lK7O>s6S647-}g4XTM9-'
    '0q#N+fOaCpM#C|Q_t+@WUYR(n31wR8Qe(0b0xR9mS0@Yq^wwgO>nUc`cm0gl6>`iOj|3-'
    '$dvwyIGL{U%d@iboJ@o)3jXAh$$tIYBon25u4GbMRWd2LcM;1y&t+GGx@}8In|fEhHVDBd^d^*Hi~UExp;zh~^_imHanW9;|8ukkg2tIYf^)p;'
    '?({BRXbjGC@d&z~UabGVX9u2}-+%wAGra1(O#c_8Tj%$GF}S+!oxM!|18?#rzxTma>$jKbySXe__~!Kst@_2i7lZ{!e}6R`y-'
    'e?vNIbvy;i%nyp<RFZ9E6ttoZtWDCm6xt(@XIk-zwrcgBRktAK~=(^E>|tBFEsRcDoq_MVq}b9KKBNZ43nF+mrkOkO6$qX}u7?4W1|WMMLNhKe'
    'gV!)CfA00^;kmUWoS2e2j9J-'
    '}%{~aq&`T4JN2A=)Ey`AzpuO+C@C)ywQ0njsqOmaZJCE=XSe|7ufki<7jzaHrwA4m+q0q)4ICq8owCqQ4<LFbd5w;OxrIv#-?R1!{-'
    '%7*=#qiN1wj?I9tomS_PNaqxN?n<8W^J;R=HsUgC?E?>)*9KCM|{l%uQbi}x=&$}GD_q#1wK^bI3Q47DQ?(Z+N89BFhns%aq71uIHD)V=gIQFD'
    '{)3N1-jTj*IzebQ;PwMiqA>oWaASC?roa$Tk?=;|^}L#~UGy{;ze1adtP!*$g_d{=r#fmz!z3fpo`5^i-'
    'hNiddcaxqj_my5CL8VuTc{QJtfl7OeHNW!6tO%TTP$OJ)7t|_D@U1cG6DQn6^9POeq5lOBMB8jdhh%$05COhaVGRZ@!3n#s{Cddd1PVrFIA{7t'
    'x#H!-)nX#^T{PNnRHZME=lECDXbTw$~n9733PQ4Y!2S-'
    'Zg_~3L}4I1(OEO2y?tOk#`bQU~f`RiR~Xsnas+8`=QUt(;n#<1}m!DPqP)Wt*WW`m<&#U`y8xN47%L1)>bQ#F!y=%|k(8+5Yb_pv{xe5trIXG|'
    '6_k$z-k{hV{23jfv2T`OLLf6m#7;>F14%)OOeBib**G5>S+7QnG&JR8wk-'
    '$lgif4c^}umN61b~RH3t!`HCl{>9vc6#t~oz^ouJ$boK_cJ@K)nBexbY;%&_~_+2CP(L@o=1c0jdy%$Pp3|{W?FwiVm{99^#!T<q^Q@I!19~yP'
    'Rs5gbZK@R!+M%ni_ma@P%Flq7LObUeR|A=j+09ly+qg5SH*~>0cUc+N^Ws2zqp=Xyq{l;8#TWM?Wp`JjP~>E9OoCG<QKomJjgTLAk#TD^lp%|C'
    '?Bq<pB7@PPX}2Nsqh-l8ePH%GCeAM{Z(R2I$xX>1`xZQrAH8z<%!3ln_LMwQAsBxi>}Ma$%(rE1W`HDjg-'
    'P>gAhHX)U$tne~puGbJsX2=|_r>F1}dS!srisd;P{>uQ}+6=r@LW>+x_ouJ^d(EzJM9w2bCORYb14HT{<nHrZ+w-'
    '1l$zc;<b=aGmGBThs3)ZSs6Z4y?iVk~LYE=f3xM%l&SmChN4h^xf|!WC|*xq`cov%;VTKZ8!XGLSD3@L3nHDT(;C-'
    '(Bhxquo*&>yt6A=rD6|eRiNFHRmkW%s}u<^vtLFjnSgOgb9!aCUsdX1&B?(rU+AHFAn1%`XUGC^M?8WnDeI)hlJ(qUCKk$3Mzea?+0OM@=XFxj'
    '5&dL~If)u6&w90|Lg#vI^?!y@5Z^0_9FHr#Rhsig@^dA8k_u9dl$MDlqmTV>w=5Tq_cIe`D!v;N{>L_79{bMN!UV}myo8-'
    '!ClVZy8`XG+bbEfj9R=Db-B4r$WJv&j%5`b37zZa9mxA27VWKR{2us=bxnz$wyS6K2A}-ajv@|R?Wkey-'
    'P|8ED#3*DSead8478j?lzP{4sCsY=WLN~0jKtCiGNMv(V@m_wie2V4Q8M~(`u9LP)nsI*|Jw<H|+U?%B^I`n{Q@>3?PJ6~rKT-'
    'N`&n2h?1=$A0s-bE;tl-)Bec$+nL65P*SM0L!`xvVtvjO-'
    '+WjV9K_o1$UNmGrI{qbojm=ZbBDr~iJ#sTG4gFh$}6#HR5T}Hn}unW#icq9*j9jI;dU6EQASb&D(c$5FMe9xM0;aTI|ZM{y_+ve+viFbJcy?q_'
    'sTP*+i(0s7AvKN2O)G7Q=P8}Ds&F#+Vl>$yT$R?(xFQ(6`(x2I&V{Bpd_*V|KMx0vwc^c8$tmDGTU^+^hR@8zW5i#`?RF^u4dSLj9BmP}powdi'
    '!tKV}usU0*uoEaXAgKN&eEGMu^HsV~5q2$pHC--b1+fov<i5XbxsF+^-'
    'Hlq~AoKrMzT@Qv=gRB}nGB)fu_OQIT9=~;Zn>XXR?XuvbJS*R6Ze{aHt}Ml5!8h|eMlEiA3nvyQlJpR}SFPVz0GEHt*fgy%+7(3$Id_;O6_HHg'
    'WSB{brnAayv{7(ge1>k({Js`!yCfCnOEXK~FF9x2nPqzAG`(K8O6;I=93cs-U}3Y4mVy&MqfL-{k4|m4=?h)O@|!BDr$-'
    'duiL`{_Z&G6nwXkK={xWRiFGgc9XnbNswN(nR7+J6l0Dk!;cWH83f3|OQb5kRc4M8T7vp;vHThVm3r6Xe&rL{*DvLE{CgDA=yAJ@AyU06tei*%'
    '^|V0>}@`}nfa1JW6c8%&6aKF8c%^vly<i?gi0g}IjTv{Qu#Rp?<BWMn;B@kb-^ttbCfNPluI%7-n4p-'
    'ibOi@{Y4Hh{QyrR%8AOtRzyfQ9CN6^nrHO?T>8XO{Q$9K_<F$VuxxeLHRn(ZRa>#;M;+^N2WbLYpD_Y1S1DX0UWAOq&oWSsWNkWMSuDn@ii7f{'
    'M@6UGuMJ-f(hnO_z=}ZO%mgNpE3W!N~jIn{!d`dNDO4>&H1JMcz)0?L*Ts-'
    '7m_}PyoJ)q4a%kVg=lS0Np$ftpB+L6)GAeMW~12^_?(`2b$<dyK9tgAMY_i>((VG=<h9OVfn$BrCk4L+Tpq9cWw8}z?wX4ZKFzuh(?VE2YbOS1'
    'Zs&4s1so8#w4^+gcr4xQDT<&6BV31Iw361a4~nWO<HEG#*zYX4TjnG^l!mEV1ar|#}Sw#La+j;3#$ewZ@93aEjJukvp}xHl10aBu3K!9!sEgH@'
    '=La$Q<KIyF<s2J&C`<(LvOJL!1`NtIth}Cph@3%Z;4U_?VQ;G+K})dtF7GqexiFus-'
    '&i_K9_?S*g4QBsE&#eF<1lSVGI(tK=VQYqB~EC*jnBaqdBTFa>*`_;x6&vJhLX;ZmaGUW;>6nuF%180_Q9m@;cZ#i6Nc&=3_rf{I~|JH!&>aRD'
    'ju$CvZzg%hpdB(xBy{Y2&4rrB+qfrTrB8=0q4(Rvar?w$@s_n#2Jp#wMM3ciuX@q@DnULURv;Zviu-_=xKO-PZseF06@tXHzK7ts<FzjXn<)?t'
    'Nz6nM)_+r|VjikhXn)NmJk<!v)M2n8cBm6@nbD94A~xW*)(0UrraNqh`H0)2bcks@g%MQ*d<xbeeJJ4DUuz$H1c-'
    '8iBx%l*f&`xjU$0{8Tg#Y04Qk=iE{Kpr}6aUj0MawW}dB2cciHQ7duTNJSFYE~SvQ1~I-#_SrI*v-'
    '_}ViZgZNUDm6~E@3P4+tw5fmxWnV7=w1plm%6PTSQJ|DEZ-CrZGz8_iT=+NNiESWTsVh+{H3v7e%6?Vi3`_gqg9%18d=!6XFgUIAtd)G4Q5ixz'
    'k8`>NmRW(FpS#cDogWd?nTZFY)RoW@%=x<7BZ@?WfASsu+Wd=D68yw0>JzE?tSAP1*6GQ3!-'
    '8u*H5#!$?^gxZWsL;rB4Ho$srBJ;ROL3C&B0oQn2|XG3#_XEf;+XLEDExeT7sju>o-'
    '6`__hbPAY@Tgd?Zl>*Q@#qWx0S&~Y`eaaAf;%6RL4{H@2&%0G?1sNg5KUZ(EA=g)g%tM>!!rWgGCIwcHArh`ZjQ~uxJkOt^bQ`M?LaQUC?s+5<'
    'K#*ovD^aIjqRxIiw~NIRl*_F_`vQFdhwah$tTXJldZUWL{~$-etDf-'
    '><wFe)v_?M<PP2PPU<C1?*`+z#O8l&;KkMqx{cSDva?I039A3hK)NHu{Xb7FVo@Gs~sj8_n8`AskN2RXu8stXVmWZX452L0vB(gol8$eU^wou#'
    'b{Ce*^;ul^Cb2Vbz-$t`z%$BA<je`B6@8Q6l+TN~l<x&h<x-3Jl7c8=(F+Sc~u3?8!BENeJSP~`Zv)u=1Fg-'
    'O)gZ^Ofi~utM+5vf!V`T6JFft2z0J*_iB1!B<6NX;!wqXXCmChGH(|FkU&>pvcAGLcJq!||aqSIn{_{TpCYW4sGj^oR3$fG=~P06<h+KGEt__!'
    '@wPVk?(HHSTdBP1TJRF%%Kcml=aPc#z~C^P;<Q|_E34@&Uf1g+-'
    'Z9Ir^DK?;&IcozG3^uB$Gsb|g`*WJ;&q+M=<@hO+u2NAK|Eios<=O}734VQ2}YFtz~<G7Kpg%VZRh=2OYC<a$623IQ!j?+N_M1|T*0Bv-'
    'y+Y!jWXqS>bMNMoDEg`JZnJg(pa$pP}*vyqPB~B9Tak+&YIjpw^>#n*BhuF*xM80m<dNl5A%)Dy5#-'
    'MR|D#OAGGZxjGN6#i6b%&w7A8p4m9#IYlCTD~md^Ll61H}b@SKW1GX(x+xPFDa|D+E_74K77HIiyn_s6smhY(UGJaC@fcXymQKnEnJDW`h*6LF'
    '(8zWvoUO5%RY*9HWrmh=2ZvhTkX^-sV$ZOm}!QIY22?Ui+T441Lof*jrd*f`19>Q(bGNW-JMT@jB$}@24PL`Z+!Dn^-'
    'dAoXnUnp$8v^1+0tZ!A5y(YPpmj0D01f!&qk0@!s6+m-'
    '45h`NhK^gcw)7?kCPk2_3+8L(_Ix<$z@kz+%CTr>6hKxbEx<C?D_9McW7f7>*lL7wz3TOZYScT^qPG2ZYZGG3|`$yS6)vzWVqkCV(jmc)UZ9BS'
    'Z6+KSzZAeG79j2yDejf**i3kceOtTa<NtZUr&Ys2ju+=-'
    'R02VZykyqan4zt7Fp#MObz{Q`&<<2mjm8Y=4Vw>)DMlJzZwwsbwuPn(h}hg(azFv^{`^72`0o?d0C{C!XnKG(W0fuJe=Jt}~jxsnn{KS~j-'
    'lph0A;(|)CPP^lefHg)hdW@fj>abCBKy!kFrH%8)|YAhDcvxZ@C3ypGCEl)6S$f@|71EgQTSTNn8bYgw;PLB6*L!$lWMU={ma-'
    '6^}0~SI#PFQ~icS2>i+aUG8Ci51SyBl)^8aVDx3$&DHV{V3%d;H0n1AO>GiC0_@-YWQ74gSqCNd;o3M*1gZWdpSluf5}u-'
    'C34nIQAFI@LUTJg<IPV+3M`#1%JpAlW_(y^#nZE3)y%II5|sw!n5CSwvkXl$sq}IqL51x{_z*1c0_*(@1j^H#l?e)&5LorI~t8UXV_9w1qm1@K'
    '?KMCWB}=J*<p#9_#)?oYxfS6>gi|d;}=#PPviU<76FiTLO>h_H8R9LH~7m1fpE+$11paAoN(eGU6_8j=TJT~q>qKjoO256<vb%ik#<MTuLA>K0'
    'Dg_G>CY_a#lJHrypZ_f9vvJr-+ZnZAxc(ufWRKv@qs7C9vmG})*@o_=41k$U}8F0(Z$kVIAmZDLn71%bL9VQR|mV98<>$kqJr?5+`P7Sv!-'
    '8%AOO4*6E@_}H=k=qLf}#K81c}j`qn@r9AFL5vS$Ra4mfh(oZFb(M`}S!0gBAz*>q`Z5i(rRRS+S>^Dr~7*ouhCQ&xm1mmxVIp3>Q?EQ1M$^un'
    'ZML3q;b(6SJi-'
    'Hgj1!IG{!<JSAepmo*gR``XUbSzck2K2dBq5o}HvS3|y&L}fsB~=n7Ev)D}&w|*+_;WGLj1t`tvLMPM$)B%~3bH}9+x-M6A&FG-aa}yP_`0p4B'
    'fi>OgGV_s$oH72aMvK?H4vkeDH!d8nD@_mk`tn1;w_K8W)3N*mSe)n65w96*w!`78SK;`jFfRfo=CvonXVFRmO*iP;wU-'
    '3??zcGL0px<O3b@7iPhhVlb+Gmbw}b|j22E+_8#S8lb{hN7b*m@-M!8SBN9ezlHS;{Ax<C4;<hmYTNgS1CbaKHX!~ys=GI-v%1ptW{_N-'
    '4zscg;$>QKGXgLdUJB8Az@Y#!mEaNwJfPv^JPN&fGQkLSz4$J7hCu|hRu$aLC)E1t(+jJ_ViI_~FV-ji!I@4f15**gWQ8vBFRP(K8r@Xq#(v}p'
    ')a<)_<s6qRzl36ll$!=Gp{<Lhx$?7YY`EwtuB*lOEJxZR&Xv;2bizQx**N)QQKHE1Hjd}=*9fGVF1TIQ*zpcEdlD5R*TM<qs01a(HS_dXMU3fk'
    'aKj{4d==tsxwLpHFG6GJI`*2(Tf(Lb5<snYCN@~m2Wtq?z<m`sEbsN?b4Fye{MtBl<5VFJ}YLx-KlL2g_o=Y=ksbTxxm;e30=AOH2uoqhUSXr`'
    'j+_GS4gldb)EESZR(Nw~vW>yy9eK}fH0uL|9eaoElJhQt6GukJcK(vqR!igfg#erxcwpcWIMj3l#Ut$s!C4^TJ>K>jlnP1WvLw{-'
    'QFo}O*+WxCpJD?oHDt(2vi+U<d)^IHI3wjI)OB53o19F37cqy9vp*s2fTH)l6^pnqSaGanRU@k>XPSQ;{KRQkA$D_B#tv7w%qfj5Rwaj$pUJ#N'
    '2d;09cVKt!@*-Zk#Wa)%7piBD+{Wz?Ni3%GxvD4y3xt^)^TLI&6?+8YU0=Tg?2Y48}zCAc^pV1-'
    '!Zva8N3XJ)9?*!`Mk+*ec@rupsbG0HMKN{Q>n%5Ww;m86ea_xx|R#1iz>Lr8!5~g}<&z9aY$YMN4g=<!&tnh0xmQ^XL9yKXTQv0iSau7G+$K`4'
    '9)=+WK>|VD|4N0yMD{kV&odJaB@)a-MLTShmffw$k^ma1jQAGsC$F*Dt@+#hS+1oC^=^M?07|N*FX4;DnN2KkyLS!r=s_M;(i&v}N6b$HUwC-'
    'T)D-'
    'T9FVyczeQF1V9p7ghLRv7H~DuNv!Mu!y)f_9J(+hD2Ii=ZB6%LhsRSpy|u1SgXV4C~UGdz@i$WbPV6!K5NPg=A%ZC7CD^M;IC@9!zM%`B*I4<p'
    '@T|S7k<5DP31g7VXL7%l75fxZmhX?N#xRK4&j{AzX1Tmg8Y%z@4P2GPzR6q|NOxk!l&*4n|d6_}+XGvW)g*?dQs#jQaEua$M#Jd8gA2N=c@xo*'
    'ye8AMf-'
    '!RVm3&EBz*MeexDB<mmusLJ7MKy6!|uFWv6)O}^*(raOzQcmmiLj2}!Avnead2DI3Tulq9>>EyrFIbWxn=kn(~UUb*WAM~OZV9(VuLU7D=F)z{'
    'n_F4z`%bmz8ad6OSeG8ulpa26p%wWXXLMCa|4*$&n^bCN^Vc2HJcA38o=&;ru?BU?vdqm3@o^ubT3kRL4nh4f7;i~!*?wo2G*>z8h*EuKJ8Us0'
    '5VIU`^j@2~=0aRIj6iVfd4x>nvC>q&%qDbt5Nix*M(w-`B*#&`~S-y?;`>fht`}cnAKZ5t+){`BCWMm;r1BwJf?QC8MP1AM-ICL~wm_e``dEVJ'
    '*i*dajZ=v-s3!n#c64Kj+$vqx>+;ODHC1^Xb$^0dVmC$2%Z@?Tb3<eHHH=kQm+oT5)A`qhW5IN`2Qw(<o603j*LtX}AZ?Y9-'
    '&%<_&tL9&0{GfsjNJ0NNJct22nyb_9FIm>SKQxBQ0{0b_H0*>qw}_OI^);j;(YowSygb1ufQt9!^Te_GUO<6FH9j8N>1TSQYOx|aaK(LI`5=%|'
    'e4%$5r&ZPehdZ6wiusm*tfs?H`sSlTac07MB}!=Y8kMKW1?@?7M#I3Cc@Aj5zANLEyXHd>(&}QwMDxh=lRby6&)%r_?I+9O@89rYTes0{cgG()'
    'J&-ZR{lV2`e?)w!V)Q$|L&<rk+l7-'
    'vGI`$Hcg#TnUnRlD=6jKx8H{~n@dO*nCvz54JVMx{#)mh?)*+UKUT8Yp?u7xmkmf?Xmu^}3BD&$&GxztayE}X~bbi$vVRj~b=!vriv8#@%&tWu'
    '}W@Fe+80=^?d+aKS$>Yq2%tSvvVoM+1oElS)b~5~)DA${OdE;m$6r}(o6I{6rfgkPg{@ioJcpvAYF{(uqh<-'
    'iAf9}VBR^vbUK;jQEGL+K_cnS|bz@7x=uW9S5{|UZhNGwexAL6Dd8rlj@jH&Hgq>RWenw&H6Ma*Oza-'
    '6RSj`6D;;X(qn75xp8;kNOA<S>+UKsYTN?8*2aaoLVh%kXuVBJ*Xx)XHL40>0RCc@Hy0Xs8^QIuQ{{$FM~Frlo@Qu7x(Y&Ryfdv>o*J-'
    'pY7%sSy_x=3YBuo4J|N0-`9j^thJOS)W3xiI&#WqMP3s1dyzj@5vOA-'
    '}HUEan>HB+ajj&Tb>OXAJgsHJ~Ya2*d73z;VlK{>5ST!pgava&E{2)X;C9|oj~!5+%(NEX!%N9)qp^SZlOVB_di=M92;W|M%P7k5~7%7!`>4JM'
    '>6D7lY4$)hOEn)Q65$Si}AVmX)3vxAxs~HwKiRrdBm4lMIoKt+TjiW+qtzv`6ezPhRZJ=$lVk@k@jZ3IknM`RIpGs(zO+udXdR4BE>aLb1^APi'
    'ld}ziuvNgF;m!Ec96g!hKB}Qxe9mC3+XBA?UJ6Fi0mWi^$7yzbm7^lrx#R87{f*JDFy=yo?^M#;@0ZMBb+M+zFXkFxi5!NWuvW$Rdut<wjRm;&'
    'ak@6tzwA3vfygTYv=y;px=$|OvuTEE=idiGjmvuma^%Ep*P>5r_;Esd=toCbhKuBG^W$^a~pK0=CD-vXl|ySTc#U19KX;Kb-$7B6-'
    'J!Cl`UZcNkBL$G=-dj5{A5NYD|F{M<gz6{jgnp2X+d#kBV06)2$HWb1Y0has<*3EaLXu?u3-b5~WmgQ6ja|-'
    '53cUdc#|Wj?fniA=THytps2{*U6%=`N6j}FR~n#C2$R=)~c&3arCmC>vxQ{|5Z2F3PaHG)vPhB#)DTFgjm|*A*5^On3|BAlMung2X=4)d-'
    'NQ1AXViYdedZJup1_#82@qDIIJHxqfOrk0#Njr1;&njWjGXkxPgqDWF^Bw35|pv+s9M+(F0)wk4xC3F`NFMOPk!AO>&&S#SlEyem7xqh~KA_^2'
    'N&DL9yUi=$G|%)g_Ez7q6kFs(ul*5AtGN03*v}>I1LwaqGMFBJk91VtHG78H5j>o)hvkzlz+Vr&GT7h!>k6994IBYj3s_=C&GNv3gZ&St9V1FJ'
    'bX{-'
    '*|28*J+vJl}{9)%E;RMWK^H3=jZ3!#y^ZqjmP*4&`Le!G|1Hf<_YFo=C0ATFi67FyZRf$V~+RH12IALT*gKh*q<Z018Cdw_m~Cc)<X>w1a7j}h'
    'Ul>5fq)vlaz^n-W00&1488diVTkETY@v4z3`=X6A>gNWBJj|9-'
    '){Ye4lGPgfY}1Nh*hwPZ{j`A6c{Nw4l<<$dY%aBAw@2=Vq_d;A>(M%$cS|g?p!*v!a#Nu<RtQzOC?;8WeSMvkq|2hs`eB_S2N`H?y2G3#mbw|L'
    'b7&Itq?7>Od_e3rxI0z&p-?JFc(U+EW)F7o}9v)@>4j;oWjXUQz%?mWXf?g06fnYzBj`-'
    'y*r>r6K}h<?rmJ8rB694xpXW}$cQgq_OAw`MsM_%8r6>Jx&@s~7pS1}CFTSJC}B`vNuKzKzCEMY{(WS0KN#+EZuxKqFz$roq&GqIJoWJ&h-'
    'b1SlP&kb6@a8vo6GsFMK?mmhXcXi_|T-'
    'CD7ajbC)L<u?N`6wVnybg#A4|VL^(@r=KEIk3B_DyC;?sFDN&?H=4>mKy>>hK9+t!Tn|zBvFq0Xrlo#s!Rvx3a2}KfHN%C1wxQp@`>>5qoTQNn'
    'K70Pe0yP^wup_XyGwsw^C)E19BR=ur{URy|x_kV*bho{EhxUl!Pa*p?Z+mMcQTP)Mvt|ZH`==Pd0;JO(1g+Xz10^d`#LyQ55@*W1Y<^rD_Ej1n'
    'n#-'
    'HTj3RwVb7Wc4%0f3YYA($H5P&M~5k#kE%!N;A2!QM6F?%eggfUb&J#PnKL5Z`!G*cz{YnCA8oXC!8W4^PGzX?x7Y;cp8qxegk>mWkrO+GN_Z**'
    'DFncC(=+-'
    'Ct)0Ou1Qe0<rcYO(9oj+R#)F)|o1M%Slf;*PO2!iFIQOceu`M_$&KwnU0b=YJ>BU!mwjdNa3oIU}}AQ*r<A9X*{r`A<3|Qn)Um5;mm(mR8J~Ah'
    '^4n{SLa(GRqO!wN|9;qz2djx;aJ6kHhFNAfs=lXMOgY^Lqj+zHH1Kx=%kVj4dP9?LFlt6Z|c0Os)JAjQeEe~Xj9$S^1DwjKwk;@lOuQI(*}x>6'
    'M#;!LpL*fQt%yKpSgT&W-'
    'j%N{T&f6+uO1XUc*Pn`$fCE%nnf!11H)iusVx==eEkE$5al8BtdEkDb;FqN>bykuM_q>Bmavg^_rYw_lKPHp{c;E2~enMKeIHW1*u=-'
    'nPLA>Uo`!kp9i)ml&dCv+O5cZnlmI;M;aBI@5qCHZT-'
    'Ybi$+E%)HFIXQ#|tX+~lkYra|V`V5ydft@b)tvMlHtYGOZQe>5O)bIJ`}p^33IaYX3pgC-SYzH~wxFNraLf$+T8ghB)Z!6YHp#HP&ZnJJWq{dT'
    'L<9?E+}YFRJQbbK`!w=XV|5Ui&~UgP%f{bUQrda#_lHr@7zb~o9|yrq{zJzA2?rj2H&+ZlZt_pUFK0Dw{CHhtgjo{jMWAlYzXPxIRK+k@d%uYu'
    'jBuxq;b*eMUUjUEoSGX&B1jH6feOO4^E*FkJf0VqeQ%&e(w97^5HvA`e_1IW>7lUG)l*c&0SEUD`4)gS4>pw|jd-kCWb1XcURPAa3cB#VN!{l4'
    '1rYhp<kP0uBd&0HAc=2h={sO*{?tv2RDq?}Q9su(QvyIo4P%pA|vXxwXDwkvE3S0nVolY>xrE^wN#gB*iJOEDeh)Vd`#sN`(BM(^Sp)Ryhk*0Y'
    '^Cx(*3kHQ4X1xth_8b#lSpufNNk$3?q$)*hrAcg_kLcFvNG=2qDCCT8pdnn6tM5oVBXU^F2eh$5au?R9(!8ecG9=-'
    'jp!uyV<!cfJkC3hwP(4thT50JetjJN@l)xnKykZ{OZ}E*&6wz}ZzH_X$r759r85X)~|=s6Bvxed?#?W-'
    '~dhfZxEZdY|&;HvU8mT}eq5X9qxk99?p?2JJTEJ8{Nm<9}ecJ-Q^gx*H@w5aAkcONfAFrTAP?QIqaXHj5&cFU-'
    '}3wn43x1XBa7)L5}e#60>R|1h%BMHOZ9{x%p&ZtnP`VA-Pj-lOF=CKHZ0a<0OwiPJ<q(B3T5`KvikRE*8JnL;gkpGc;j_dqG3Hg_Hu`F7dSrKx'
    'ad`wRvXS*1bpQJvcli~!H<VBwh0Ti=wWh#p+C44WJ7DPgw4u4?J7HjsEJ)lok9`eyPv(P2sc!p+(52(<cCtHM8I<7!=94bH}mv$JG=TqU`p=7G'
    'c2U^HlSMjAo8T=U=BlqsBD*|Uf~sS90DF9M9c>rK7{21^Z%(R@L@6R*f-clfwP@S^}@_t5JX=F|X6_`;$r#Rj<z+wPrb1cb-nRZ-TsA~ulR!5g'
    '5DRQjx!Ck%q#2tjVTU4|Bp7>EL@561mL=V}1Ldi>N^Q@^gOU(*s^tpwq%LZyimSei6gF%MjGp)+{37WbU<(6baZ?ec$V#!-'
    'eoYAe!5{ZB(5c}zf@e~~uu&S-'
    'SHm+jstk$sdM$;{rXKe!_j{O8L(o05GtBmeLRRcjs=1fpxt?GQA5=_*SI0n%$OG;{gOptba^>F{}e>p8{AQWIh=-'
    'e@b;6{(gdH)k_RT+(A%dgaqSQ0~o^;{}O+mM2DN246Z+XJwOg@;sf%B%L!%Q5t+^FmHA-<Oy)BbjN8UaEY-YnO|D&@;xO@2*$AImd^B}X@}>Y-'
    '?iN@18efYF8@*cK)U`x$rx(VfvtVBtXVLg-4h9J)?s-'
    '7l`10rXTrBQud2b)FXdzs%^8TC2eoSk;RoA#w5GzYt2Z1=hF_^u<!<u~#C6|$Zn*aR%mUh`OtXp)2$hRQsEV@NX?}5_T$D?xtVvCkiZ~f7_Y6u'
    '~^c`*a&mz+){5ka8nNnqbU|#lNj2}E_iP?l)7#VE08GR&gjpoH=1y&y@QqU^$@<ejz86t|t5nS9oY4c)9Ggm5Knl7*be~Xw#e}E5f$Cr&Bu*Jc'
    '+k(jMY&S{hqra6hLNhz)uQ}h-M;?Uvb`VK5i_rMpv(EEq2pmt;+k5ukSQu=-8!?^unJnD4Y!**8k6tw1JPXT52LZRd6&1r1se~7-'
    '<>$Uj1C4H}*BtcP5)!(7);NVnK@`=1x>&aGK%bkVyP_{4k-+qX`ixxyQ5-#G#6}f-;$0xz*#q|M0UgC-'
    '%;RDR_JfqihY$y7N<T3KdPN~XE>0uCta)*><+0+fB^P$u*VvJRy)!Wz@+N+PjT5}9vqet=y!Bk4bn>bmr2ZW^L@B!i9w`@cSf=zz-'
    'l(_NIMa_7};U=v27_}iWZaA_+luxN|bbwVblKk+A%m+L~QtAX%=s!8RvNNKGHbZ6W*AHsauC!0px-'
    '7N>+n}4mg))RBM&w>sz)v#m`gfHt{(ALk+-rZ_>W-V&qtR7wJL^gZ53*r<YbczJ6IV7_Asu#V+8dfkI}rU3Ua0?)-'
    'JkUvXXERBX737ke#^{H$cnMEN+%%P_txuXm0r5-^HD)Bs5PuNg#r3iuL8X!@J100WC_HILikQn2-#tv3QsD?Sn>jCch`1#t_o1|e!xuj7Z@C-'
    '+qf7HKMhGIJ8S<wzG%y{&xWg#?Kx=D*MoL~ZdH_|P{VdQ>hKa#z%2U|L~pC~Fi?c$^n~&>U8N}k><U{=QW5xQMwrP8q-*js$g?YOSA-'
    '0Jxw?+gYSzbB3(Mtw>Oo|wlZr5#jeGT1>W*DcIxA5mx+|AmG?f4bmP;X7wzYNj5Xxb-9|U~UG79POh`y(pFlV&Zrt`t{$JM8kYV}|REl)-'
    'GcO%ztB#k1oYW9-LCap}2W*C;Tq2}1S%5bCnolRN?I&TSIN!wdv59P4>W)Z6|MF9oVDZS!31ErXyFLW-'
    'Y5D9Wyyx%*ZmFU@gdTn(qmsE7@{*sK7+J)}8P#Z11?5P2Xwpe|u5TJ$(aL~drCP14<bpEdctzd1_oI1fSk#@OL0BBTtrilpu^X=s|7CXVv(bCt'
    '&nIjU?sND$no?X$qOQi|UE)!HdcMa*3<@Y5R*h+jpmsy>)o7WeyCB8rCjN0Q5o#Az(+xgG-'
    '0I4Tp6EqsZCzt}JNR*kLa>b`J!^@bN`o<sVEx!GC%Rk*X!z|A$6Y)GV`3RKBcE3Fl1lkS~(N0YxeDrn@BF5&J%^ZtGF~AHzG?KUKyZ)VDjm`)9'
    '5B-i)hbOOMQpT}VhUpCJm6~fh6I|LAD8&XNeI7Vr!Vvlm9?2S)=Zt3Y4bN%%<-3Sti!RL-'
    'L!@ss{3QlNp#;7xj6aVlK>^Ef2D`6H9z0Y#?syc(ZsC?=BUmmLj?F`BvVbnw@zj2>@nTs7V&Tu&nS;cgZ8=l!W37)lsu>!K^U#^HYhZFv<JWD{'
    'HQSJs=No-k(oJ_os<fuBSKqAe{*kyrjty{g^}t1Xy=EyJxVVw1&|ikFdu#Hg!^IJCXPLfHF1h#qSj(N3;ks+xg)O{fajEi_-'
    't8f8Ah5LyhS7N_I|h`|)*VN?a2)M#8AlvbHUnkcw28h$no??+Rj9vAP1-'
    'SuGZIV8TxJaqt7P#+*%(^zIEHRU@vO68qxj+TD!2B{tKT!KGiR(b%X@mJ9?;a9a+5*7SeK<oBDYwUDoN)?JqHB$q?#Eo7CL8V?cTW87^$`+0>K'
    '&k`+hEj)Z>h~`IO%T9sSeI%<xO@vy9Pi$re-VF0aK|`#k+trJ$E#U(-'
    '*pDClX}*Y;&u(}G7a?Xx1^(tqt0udlx3_4U@gzTTqO*IRWZc8iXO@iSr_2Burc#`JH?Ahf3P(Ss*uyeR5|WY&*&hqN5IE#jS#T#d{o@+M5KMNX'
    'qsPti)`G-6vYV-'
    '?z)U4^Xe1ZTB&6*9L)qCxSdNHi$7B~p#bY=~5&GTVVQ%8TMIE~{i+=fs#=PH09LM_tfWG8*XK%Hqu`e8t<Bk`7Vgb**|RuW6?HA=g;1zX70WV('
    '&G*or#yrk5Mx37?N%3r{8`<QFeT_HO9A}H$GZ#sMMG~nC=905YH#QkQtS>iXRkL3hYwaayaecaz=u=w%$%~iBET#p=N8lh>Q}GlG;WS%kQ)#+-'
    'zXVhG5NrY<FsF-kq0p2L2(-8CXwvL*Z}NammI&8s-'
    '+aqBRDCap#P?wN@Cq)5Q0!uPT(`VBE^3V>M?YToi!g&N)?0{R|K1dafNhpIFHjLJUwbq^imk+F?FZr0HsIJz42eI5C-'
    'dvaNNo%Sp0T+V2FdRj=u-`#aq*6FzEu<asaI_x6nU_LPP9Tlm(4?Ja{SQ}@q-5irk9CC$=w8NGaAJ?$2q2SF-&1lu5-'
    '_K<jA$yWenL9iFl3`*k4jYrAQz8TZOy4kf|VR=hF?Ow^RwS;eK&I|AL9Bye2&?CB%4y?di`V$z`Pq{eY^A0|%3;=fS%}u$d*Dug}v(fD;-'
    'DeS0Mth7TaFd{{EFMgLw*&{dNzi;20UQy?xYJUeEUOK;Cs%P31x4$jgr-'
    'y`I9x7D6pWM!94Ebv&xpEG_;g{txG*_E(U2HYKFWhOzRxf9G9};bBW-'
    'q7%uv0n!DXYHAWi+{@XCWpdPNo9NTp2rIkzDicecp#oNX7@(Fo2sKk7>XP2i;2i`I;(3eWPD#565gs87>hZS<b`g|Cxyug&%PLW$=~EEgEZ$o2'
    '|)MJbst5Bk><?B-'
    'C8Hj2+=@%)53AxhnsaLQuxW5GttGM=0WehhZYT+Z&prYYW<tPffWiYMjmV!|rM16j~(cQ;hzfK7<`I;pq@V)2eF7q9#HEK)5|kgVP0GioU)--'
    '_}Ez{Qwj(CFgs2^PN8VpNQu_^{R&7g*;R(t?g3tu0Y8ErQ}9OFI3?f5xS0KP@bbN;0wfJW_bm^tV>UzZ8!UG(C(VLSf-'
    '@1y4y6p!+3KjP5+S4SQgej{mlmP!aQD0}^axjpXNYXHPK5Wg-'
    '8SL(&z#uPh4bw~3XjmJ0<#cC<3D1JEhu9JIzx(4gl4B;J!INdCpNry1kTcET@_2v9K+t)a{+H;8FgF7FZcm3M-'
    '1T4FUfI7!)2Quau#14Uunz4fl<V*yY#XGW&Eom#dW7aI`X$;m7w_mrL5Y1*z8oBc|F{`FmfDXmn$x;h0N|H4+K=$h?>=K(7AREznTmnFinj^D{'
    'W%ZtLw|6){8^kP4LT?soG82ZZ7L~lvf_Md>NKHEG1VlqzKb}D+29Xrr{)swr%99e?$gR&tf#X?jJ(`Wf>tEWY&n){8x=o1Aj&Cbm%ja$jeoV(a'
    'rd`b+>R@YWyqq1>~{=-'
    '*Bcd5@(HN(VTdpy!bYP1s7vA)y9g|lR3oUqsr*mp5{3ip`U12mA&1mQ;Qq7!^D9eX<R@D+B)rGXNW1)Rz>_U&T&Vlg<iunWSW7DlUN5)lhOsft'
    '8u#H|tz_z_P58J1A|Ls1~a?d<4a3Omb>6C1yH%Dev3-'
    '$&9PW!(LWY_WU~dd_quH(Y4qT95dV{bnou=$nfLT@3OmzmkGgB19f*GUJtYeER%F99Zghk4CBII<^~&Wf@zX58B8&wlchp<B6$8*HWr~+@~1-'
    'jx1k)%|F6Q%v&1vdh?bL_oDOuMK|v#IgA(HlgZvQe2;nb-'
    'uoWtzQz`w4Azs0$$JcwJVP;H6=<vzOy&s<JeTDs+m1bYqu!(LGpH`(nu{z7*i5l11Y#}3ZFr$Hr|uI)w2j8f(VQfC?)Msm_;6Y5{=mVj5Ho-sg'
    '|4>KznPRt9%moy8Z94_hVYAziS198j_Jz)Z!z5=!g;Vg2ap`FWJ&~YL7_4!y|YOnP)$Va4h1HT+-'
    '^fa%dQOZBMhFLaDA4(o?q<PaQc~U=scg|v17Z~Cq;f>37G?!mhCufI=hNe2>b~Z4wlH?alFUn0)I#ELizz26|vtA>!hO74D`O0jKBPv<}W3ChE'
    ';|Va&auz>$h}+KA8Ev(0|@js`OZK<yxeY*<RWX1&+Vp;31x8-B69eKa_H{-'
    '+*B`$6<Mu_eF&+#|WjY+i|fUZ8rI=VE>m{D+WMfdo3^=6Xa6I114d)#9u`MWR~F(b}oOG0Zk}VBvKx5*(i@YnI-p-8Q7R-'
    '{n<6=Ak;A5^}x7gYybgLvSgdM3Wl@YH5w{U!gR(yf=RyXu*JR(Fk&Hv4JI}P!w+p1!q^C&-'
    '3c5JFonR0!>v;W`9~XeJL=AR?9IR)+NW9gbumiJH^w*+w+^Ea3F5rv3P@=-'
    'gUQ_jN`_~$7X^%=A@4T*z_4IBo_F<3J=?&<H|DlRd}Q`t%C&+`EuU;Jaf5_Fsd6XjUY_2+P>DeaJImhFM>3f>wBG5(vJz4L6br;3X=_jIChbVH'
    'YCyepg6b9dc+^&P$BAcCUwvc+v#EXSZ0g$C#IXYT;3*th6e|#;D&@vdj9Qh6q*x>{C4(xK3|*<4!&5yg=%FBJP`CH%X*&Nkk>yZtc2u`p+np9{'
    'NT`w6lT)@uR^ODx8}9##c2mkMpR%sf#fv%Pd^LK?u?#iRZ%K2w&bD9X9)Uk0hY627jcAm^^YEzEvpfe%RzWUC)Afuy`w0`>a!w6r<_t56K7wGy'
    'brkX}f|0Ov@!$UPYMq<!mtfABOe|%n)iQ4FMofkujaf?h-8;N)zR2!H!pYsdyh6s_U6s04U6Mb(TYT9v2S=V-'
    'v(o9daxmo*XY|+doA6iR)BMMGJJ`_ZlNoA!g}stE5fi83zxK%h`?AILi`dW+D<QkanMVogO?v8Xv4`S#3;UL(!R9%kg{|ckr7cJ81MmhlZ<n?M'
    'jeUfiu)G+-JrA}1=oyE#`r-*6pu;%vTk|5Qpvr*oKsTD;x68)w_zeBB(=)a}{lfp^&&KcDk=cu7xh8YZ!~_lMY2gKQ<~WvdZ#oZFfB-'
    '4OHWqLL4QN>d3rET{6lm$W_5>!S=uTu`g98l>XJp^mO)|fP?z66&Z`Qj@$>dn-'
    '#`7Ee=2QV4X(Yl4R%FO{3j`D1tBVGU>OCSBZJ$xm!bE#V5*!`@d_gKeFAtXK2n!rY5!RITLaHL5zIm~~t8sS|alJDI?{rk}+^XMAc~aZ#>)PxW'
    'JBFsB!dF++ySS~?b1}F30(OcG1Rn7Kn}s2`TRPF^#tlsi1KSSDlEChW5zwM-@gyJy<;~dMH7-'
    'pwa0&qsZP6wkPsZ&ta2K?+B!P*3cmxCZiwBH@zXWjCe6VM<J9pCvUMnVk!Bv4Ko%8wu@(cRX9DXH2+81qr5)J;$+n}u7VHK@@jid_&_fM!u$tF'
    'e~vj)9H*=_@_=mvtIX^R+tk?5Mf?5@nq*Sz0TxVthY+N%Fuww8p6!fo~aH&lIl<EF2F=D89RltR=0x)k-'
    'V#;Dg~sH<@Ja;kR;^^gDD7dL+?jV`70{Z}^r<pND6()%XETy{6B=0?#6$xJC%ON#jQAR=HD=9G&Ul+t%;&(BrU)Jc92>!mm&ALDg=n%Q&Q8|k^'
    '@_QrCi>C*?ksTe!^N{v+FK&nz9{BD;DMgUmO3P(`#<;+^ITFTxPOM=`B+&X`s#D?D~sUd%M@L-);p=mpqCiKCQ%X-'
    '$MRD9*P(5Kd+``wr+@=Ag?MkOVln3p+7${Zr%wUXdHo-cewl8*{L2m-kp)K-'
    'e$HIAVd<}8rvev5r+g(L_6PG+!nGJ{x_IMDV>%ZLe_9;_`E7IFu+(NBfv%%-'
    'v+tUkUC4sYEg1j<PvT&!PdA_MChyNsb=Gup7^!lHk(k(3tRscG2@pL>>wpu6hRWF>rT%m^p|Y(dmrWeMJ!Fkjyq!75+51ZXS6S^XuZl|DtYLZb'
    'IQb_>D2tuoEhlh7xN*i2~kGC_cgR`F}b3jxg%%HlhFBcePJsj(*_3K8eL5-E^{Z3@Sre<PJl{9VGQUtu+Lj3Fk@i07bxzwI-zzk)M+Jr}#OANo'
    '?zE4yOw{VluQt7<{Un#k<{S4t13+NU<fcvN8GGZirj^&N>)?N>w0I|}fk1*ceLBFa>%{3W?M2>?<@313vTVv_G=235*ZqByt`FN9W6#^gaJUgi'
    '*pG<Bwui0QMHOM>dAWXL>Wm@>C2^p-+-'
    '#sQ@}%ak1S(F)gYq?lxXY$_G^i|DGGibhp73RSUgTUx(W9V*l%{UNcWucUw#x!dhke)yzp8dz<asV_k4M@(YbYOR=XowaWC`|U<|{MW{1I+Rfh'
    'bf}r<Kg(L&w=YvwH9TglQk8Vzs;X=!cAVzm*xSQcjfM|r6gdo7#?N<-J^5n!KN}Y4!=Qk%r;Ijqx=nu2@m;taCSTpzCB)}wLKr(<);vG3-'
    'BL#LRD_^4;Aqnersb8C3L0fhT}xjsY3NxaEXu1@<?R&Du5QwRqBYY<kr!UjN+b2sm`*Xim+d&%Nza^HJT3ujQRW_C2L>7~m<Nny%>(q~yf=a4x'
    'E|jHyLtBFgc9|GR+#v&!KyaNg1)yAYlS%SS(bN=E|#`GX=DHk&^VRl&O$1Qtbdr-MP?*qpo!+amSL{Gx?xV8csT=|+UDPey8k+cy8S{!*iXE2w'
    'y`cj^P9KUtun|>j&WU+UD}jZVnivUP5a3XbFD(^4Mc7Lv=Xoqage^n5VXd~GvdkSK$0RNFcVSmXfBxlo&JV2W6NbSUU4X`C*swWWIJMLS?N8pt'
    '_ej1^30fu>xCLp4UjlCnt#B8#^lGq&^x=UBwsPUVGHI@74Q+w_LfIyH;UtZr{~NN%csq1{WE9&t<gz`g2YIy?f17fJ=CZJyqy#qVAGwH@nR?js'
    'A#^M_IAiKZhbck+qYk|D%)P0=Ymq~@wwO3pY;vIo>5qI4Od76fMM$q_kE*Uw(B`{>o-'
    'yG83Mal$dwlh4OCXMo?TOdxd5)=QrrurF8>(kqHCEBJ~0U`qu+<qiArM_*NaP7D4g=F-'
    '@jg9C?WW*9U6yy$x*Zw58$U5(6;gGuae=VX1tDk+NA#Knf=wZ{nfMjt0(%aOZ`dp-'
    'x>dRG{U^Xdb02zaldTdfB8$Qw{7DWrBYq3#89vuF9=dQ*|dmWqH|xLvIvgx8o-'
    'x{|0kjmNn$A1vd&x9idy#j`W_dH6<bC<mT5U|UiGer?IE;@&@Ygdy&Eap0F3Q4w_aV;t0e)dyHG$|EKakl#lWyyvR=F=rLCx8ck+p^ktY7l^#0'
    'BC{sovG+XZX#z4DDUtS_^18SYoMv6cbmH2xRjfh;7i6*38NU@aVTVlnX+gvGSgF54mTWt{|*Bg?Zv7SH0l*&b&+oyNI2wRTO4gsfKA+mCWgmTP'
    '+?l`>!EI85c3F*iP@6^E2IZR$sq>Fc*yf5fsQPFOlOIp&udGG?nT9I_OmR9NG7)>%=?SG`VeD|Xf>OVQY<Wx5i7$?_T0w--5-'
    'xOmy1cmj4Jko}5Vh+9a2>pEUI^7z=w-'
    '!UcsnNgTA)A?Zf<Lc8%wR*^4B|6YIZdx<jr8{z^XT8T_dSx<A)qfOVNAJNX`(nbfA=jS4Np~qOcuS6|fO?u`si*YHmsoY}imUE;uS%_KL7SBp^'
    'lPEVW@7V{cx+YRfh@avm2?e~oBRL+ay?EM%<uBsO@f<=^PEMrDOqNHe}QlC707dWn@G+BMJedYH~<tn9h7o7AQSETOVacauT2Xv>w#?Mu9j(DS'
    'rh^%g2<4oh;L1O^D$s?9&yZj=47(;&B-$lBFVg@sF;$*bBC$G@Rp(QvikA;C4VhEG2Nd-'
    '<JLmoTQ=Gsjky&BaNOly!KX*Lh7_z`n2BAQoz_FF5l`%al5Q>UM!wXQv@XWuDvvgb@2Yd9B5i(}HC2|)U4d^7DgRY)l8`*VG1;>0dsZl5ew&N%'
    'i@OSM(q(v65A?DZWE&!qRWyuz&*pk&ZLNoMUGZ>U>4}V1mH9^URg>=hn|}Wr(C?p>e1&ps{KF{p@!0^Sy(pD!io#xsy7JrzR(&l{{$a;Tk2^MY'
    '(vxxsBIyNFycAtlQ4Hh6UMUkqLS;$>B_SYq=fTqa1tRpih-NtT!oV;?7INNO2-#cQ+6A;?lH1s8k;~$p(Qq7ZvUOs-mRa(3Z?s*Uol2>%eKQBG'
    '|Ay(L@aiV<Dh(m58RCi${`23AUkn!7<>??Hy~$N-'
    '#Z~I5>9aP6E47LHI;`eOgLY<Gw6*5mD4u&`jk!10oO`2S?tdxF8MDgdkBTRMyvF2@)|~ut!Q|h)TYL5lzz-'
    '{AK++3QIxN;sbE^qV*7K`nVzahtI|-xpZ+slCn{Kn*bX#jqxA_gzZLJ{KtVRvRduhLTFCDD0m-'
    'g4(O9v~u(CVgiQaq(MYfR~6%_+UnN1Y`3$4dmW8(5QYEW~TNdc|OEyep8hS!lyVS8&i)@PD<V67H5lbUFvJ+2Vk=GoJJdIf^HBWIjUtV=MF><M'
    'q=0!n}GbOvb=)%j9A-'
    '5iaaXa4$PH%DpyG2%#)%OdN?op_FMk)A12b4E~=gI2H!r#S$OB)sE6_4=M(SUoln(jQdQ}3O3$E>*YSp+HgtnDcz$aLMfvDVu?!!Q~OD3GrN2G'
    'JORqm&d9#07(ekzf6lC-'
    'o7WCZOY;3Gz4u;VcEvNxo&QR+`>Gdl3uhsXz7X9%;fDB}9@ZO}g^k17uj}S>a+5{2!jFfxFYi9Ref63XZaWOd0spy`@2zf8G!<!ZA1rBu@A97G'
    '$={;lm|OQ$g8Po=7Nx(+bn!<bO@J8sPx{8?B7f#Q*}YXB31x<Yi|!sU$tNh_Bl^*Nra+BZ_Xld21<@X~%*OCHO+x#q1D*gY=W3#2oJi0$cOT4-'
    'ew$y1&L{I!|4J#N=QVF(M1L4UMZ_ynGMGS_Ci`j1P@ha|$jg6Sk+x#EWk^}h*7DNy7^TFJs8T@^-%!!aSKU@}&X~VsrzcxEc4+pEM7h`g*-'
    'yet9Yrr{cPkOApoG<}43tdU;@6eKZSW_4#6}c%hp!uZwWB?BQbsuW)Tu=Gv8nS%dSg_40OePf{2!A?P?=t`&mev46*s*mq{Bu}p=beK;2284-'
    'uyX~RVVTkE;_CfBmC2zSE~`CbYK;ce)fs=Qq;T7nYG&VU+U0OCWGObQobQ-GQ(|6*0@!UH*L(4>_?WI^8Ykv;U6z_GJgG6JSQ>V;W8+tnkiLrp'
    'VTsr#q5gNN?8%`?9(vaaz$Q(34)>nFd03eu($fAdMkC_>P|y8r0=hi$^Cwh15SIi=?=9rgeo0nMdbQ|1Q(rIG9kPm$!Ys5W2P-'
    'SNXu{El7}cG^r00p$m|%|T0@s9=KEz?^w%=Xn)|SNvzf#1%70|>=zkQBtCU$#q%CK${#YsscV?I*T&mkGBYqpRa|hhwy<k>)VeR%US-ByTcg3)'
    '$TqEI?jo0sZb{M|KQ-1&0kTOUJNa_kDjg|Fk!Z?|5whY400R0!k#tk=92$v!$v?>1Em|<$nr;L$-e-'
    'VQ{%>an^El>68%fLNY5iVZARJFj9dA`u0VnC?<=U_H_q#HmlG&-ohAdV06ajf%a@xEC8GH5M*YdU<M-'
    '+GQNFvoTjsSr5A<V%1%fIaecje9dNZeeJ~1Yw|;%Ywm_q@*8O*sKpi^E2;|y@{=Eqfj3gzBhyS<}^`-'
    'I`7;W&%ie9(1_jNS%(3QIzcRJodTa>LF@bMQn21S{T5&~EwD^M=9`CmQfq8*yb-'
    'jorH;Ym%MuFy(6=W|bMj?IX=%k(DdWL54e;J}pJhq<2l=y-7mN2O-M4~VaR34x{jaKv##*A?VaY>YvuX4>my-Kti7%pKsqg5(aF=svDzzEeu$f'
    'N3HNb;7$zb0%%>X?In-'
    '}ALcQgW>@&9k{YnR(bmc{=2DX{xvkGM<8BK2WgTKN<uLNbpjibYah`?wSqL_!o|2;e0^OFCPw$_wOQULchpsiZ28kjjsJle|D)A>BPQzzi_>qN'
    'v@w_nvcac`0(Hr>Cc<r@N=8JIcOle(aCigBBe8QTkOWjEsb?6$JKz#jDv579cZQQk7qPH%pOhxb=+CxwE&JFqmUmSr4P!yhj7GFf0TxagYK97R'
    'JrOzXQPmx|=9Kdu=WL5*YT~Jbc87J9F6DAm06D=sF%RUN`HzVaV9^(z~&y_VlxuAiugFoE>lMH0t#KESc*4E$BkUy~$Z62y@vPcQJZ;d^Tu(Ix'
    'OzIljwX7hIz@ZyQ_EIOLT3w2JfZ5@s($6zNEmhqX7Zdb*)aRjiGBr%rxx$-5l>8_xtp<l4?%m1aN^LT%NeUYkn}hso2AvCRU6-'
    'w!?ei;Vw20j3YJjGu~Yz>l$>$&+K8L9dx`K|8q1}z`nfN0ugf`-VT8Mu0AI)K}J!4Z>|%(6kW^bHFN-'
    'M*9t<KSz=;QXK47WNX69=wDJZRDUIrn2FRzEskKRzQOJOYW)Ga>X{hM}0huT@3XaIkj@wG+H4p+Qp_u@4A4%GLb%LekZZc^GqKDPH-'
    'rnLJL_cOQ@p9`2JU-XhXzXv-'
    '8@szT(d=Rgat^^9uvKNv9*!FO`&(Ph9XMqkj~cssTU(9YH=<9+gFcSWyCA9O4|VGE8v8U7nD7(pK>Xd11RMO>G+cCc8rSX;)MaA_?9Ig&`b)If'
    '<t=6l>k(S)u@?9ji%oD`m(8~CJlHNT)0r|6@yIxC4eCa}^AWy11w#?cJ~`P-'
    '_~<(S0HM)<`7j(Y()s1JABG_EG3*My{|bi+)hP{t{z2Wi!#dUcBoL5-'
    '<$Ufs0BK<ZD!2~}#|uK+B83vq9cBbhZkOJdM+1v|z;Uv4VKJ}$hb`T#FjA}BoEo*d@rsm#{r&i%#8biTtr6UQokx)EtOdEI3{EToFs1L=n{$LG'
    'tr<I=w`fGvws8+xF0ivlG4IHAFY%vEWU(l#KR?<NjgbMV-AnpJJi4Wg@!8+a3SB2{L=(2Imk+A&p}v@H$uWL_g)#mLd*{Gt9=^zoTut}bg&up-'
    '__~!)T`^h9qPB{ch{mj`Kfgw+5SL8(7C3e%`a-'
    'R}fZ71}05MfIn>$V}`k&yt@!9FexXx;U_lS2cSu0SZLZ>fNk{8d3ClOD%1e5Z7Ig;8UYS?5}^$>>%`J`OqmJpShk!9!qV4)xeQ=LzW+2_G${`5'
    'romOZ(-+F~Hp<5h-+C+EZIsmi}{gO_k*ZcBWqtDPj1Vf@Z)4MxLUpGgK1c(x-'
    '*>8Dy|EH&VO=MM(XQSLC@I6F0RXf(`y)M7`Su1TD3w#9`T;Z`E0bj3l;^Zw{l#u(pTq?Y+VT6f7cUVVW9*uSsUZ8lS@`?uElI+s=+fi10OfDB('
    '(*ST{-b0)lLc-'
    '<`g#nC&i4s&XO3I5yvKnvbM!`858vpT3#(4BsTbLJZKKXh{ejKG*OC~!1}zR}1}HX>f{IRRi&OWdSkRq~zus^kjc)LyCfiTMxgz~(|d&{VObj~'
    '&m6ngks65uD^`*++TFDajao(Q>JfEIla%*()v}bnnsBlcU#8aH(D!b<%354t{F@HZTjb*HN6^EOe$pEiq_b+t1`O=J?{dkfJ8d8mE8ZG0cB)!r'
    'N0219;mf;M5HkmXFo+P>u3t6nOtY|31>c=<OKJt%>-Jj(+Tk_T&w~i*F5E)2T%7z6EEijYb8i-'
    '@6;}kgQW3M|mW+P=*K)1m!^sKJ&4zs1?JnRy@)5Oi)ZJn~w1q0y3MC0x%-iDTu<jv{2C;M*gW2_8-'
    '={R`<>{yp6V0w0OWqa7LWcXBu@w0GBYP1z-RU*Gd)6KqU$C%quI1UTq3u{y-'
    'e5Z!Kd^lr;awSL9nsTQ>?>X`3I%z031sbD$SMRpIqIC+~Z$b8|h=ctDLFSXM!YjAMtD2>0<+B&z8S8ETVgP*K}Y4kIs)zLZ3M{eiW(%O&<^E;X'
    '!Rz;^2}{$eBPc#E?Af^9OjA9~9>^vbf|Mm{3LzD;%H{n-7-'
    'trhgZIQ3uz$r|DCxK<{VL&f%;Ix`2v_tFc|B<;0Eor@l5w#c&Vq1jvG&6_u<&~*TRe1vYf94XU7zv6VGCTv*g{ojx_A};2}jD7xKEiiA-'
    '3^(w&M;Z_1HrQ@p$y6x@$oJ4w(1ES)w_&1pmdgP2BuLFVr&Zk;js~c<eqgoWx@N20>79-'
    'LZVoPhrQ_MvlDJ{es5e!ylLn|As>;0mAk;Ke;oN)cF<{=QEraftfO}xyu`3DjZr@*o3k!6-<FhDaK!$m}42`=b@Qmk&=zb!<K+oUW-'
    'u}3y?iS^=EGK7_d2N#?YCFEziW919@6<ZcwHaQR)}&4q0`+2Siej!R<={wxU1=_{YxkHr78m|K9B!`b^NV1Q@20;5SYy(7INCQ{`zAE(>C8Sbt'
    '}Pe+SZLSbB^LZDz*!y`247jKYIaLyT?f9q3~guyhd5~T@L%pI&e|nxlaRlgU7(9#rILF?b>FA=$mwX@>UPe0vGcF&o~X)_(cz-'
    'N+(CwX#rRTeG%|cWA;j24z0`@1Ey+0)lbn8cb8BI%XiGAflDcijUP<nhzs5X~eEGIv58fZfPGMS7+Uc<Rq0yW_7{RRr%TGLj%PN2&ulVj%Ugg('
    'YWEw5L+Vty<wb)#c>zw?c0ofb)!whH*@?_>d&TqH!HJlfjp1-tG5Z}W|^oYLPk3UM^ZpR-Z-'
    'f;pZ*!~*b5su7{BjBU%#b7*q*Xex%kuSm6+m}4QZJ$fExedhpo}Xu6hVxI~$0-HzfM&uI!#*6?QB(WITDl+?Ve!O`iZQ}GCsZGY^g3J|-'
    '*X@FI{0Sk#^5k5if90)HrSR+%Z;{kT=i1oq~x)<8iUiG9lBO<OV0I1#NL@;#p;%TF0nHJZARde>TGe`w6O{ORVhe_oe?+kcpch(S(-'
    '|PGe9t9^`3E<_qVj_r_=iq@*`j2(}|WUs~&6M`g6ANWKuotOk6Rml}^o8_(ES`2{c!slgiF2zUM*s@)2N;?TbOHH$JDb*xA3IYP{wQ50uk}Kbb'
    '7&4%f0!_}<#?bQ5$jIBXZTg?F*?5sqj3mJI6LqLi+4D+q0uuA2^x8z7SW?ZTeMeF7@iXKXMYW0){)LgN>mU~~m#`)zg2gLJa2>MTZ*1(9Z}0OD'
    'm=Fj_LH+BMAo%V8RqQ**u8oD#Xx`0V846MIrqeAc>H93L-'
    '17xSn>gW@@0HqJHsnR!PZ1gphn*ERht*{!^T^k9PirYFGkDHxyKJVbHuij}Hw+7O`-$F36|J0V%AoOlwt9M1<P3-)=I4$YNSR3wkWuJK-'
    '!9RFSzBy3vh7EP6WZeyxD(EW^##qq}X-'
    'S2CMMU4ld@t{Ow(RTFCJU2_UCo^lfyt#26MAw&%{qN(zurO+coj$+5k^{xy80S%9PC(JwueTpSuCN$#c4fR}{2~td$e)fXgXbHT<K6+)>e1c*E'
    'yaG@_+jb7Zr$YT2^tOPVeT@D_QV5$VFvaZE6y3I94(LnbYG3D6B&J^G<q0T5QIMb!*SfI=6uma$|o+>t6a+$!)w-'
    '<0aypZR*WDh4ZN}UoY2|f8s)oLBk)&m6zFBHTR6kv;nnJN&rR~Yrf+*oiC8U)T%9D=V~Ktgd7o`dXPb!XlV4>ssxbiQvEo-'
    'X)ar5KMwM$f@ZPMUw$C&#l~&DUSV79}OyHCuToRs{fei-'
    't%R#i$4cEHHC^H^AMA8dTegIj7+j;6Q!yNBQ<Q6ZxPO>Pb<n2v%4sv(=5RTn$o(=Gn0SC+!_#H=t!5U(~=Cci$<b%E3F-'
    'u3MWQ?Z9sw7q5rLq;eHX7}no7Ptl0O<WJt_OjkjJ?ZlH(6nUb8&$dP*EHmsp2Ra64dQ#ucR@AU)jC-Vinl{7?Eo!f%xP{WMv+ZebZVph$vMRZh'
    '2FrwW?#GVt`$Ok09y}U%aR&zL8+#QD@YRROJ4bJGwfOq<1A#Qz1hN^6(3sf5B?7<-'
    '9E_<T$O&ilCJ!DHXO9o|OdtLX^C@3>{FcANvdcZXQPO4Cq*iu3{6rhV~`htkhOqwE=7wyfS5I4qzWyE|OSh&sSxLPyJ~ARBxKOhf@Cdi19#g-'
    'iOl)PhjTTwDD@b<vKI(<HgNQV22yZH7^7Gt`7#-'
    'ZgXYs!c8`$gIj?ZVU;Aq6VYvjp*8ukvu2bds508G)`@r9zOlW)UN_<~SPAo;olMM|)iEE=Tj3X2(VhJ#;!Q;Xl2A+W$x2uQX`TUV2DKcUtc130'
    'Pn+vUn?cRyk?O;kANvA420HuDKhQX@p9HuE|8&1Hs4AI@RiBcBC-R6z$0TO4TTO^(Ky2}{NK6?`Os6#1I3r91mm+tcf@&J(->kbNmcp;`-'
    'nLmmUG^@;a?yn`7#RbzYqkcx=%LH~t-Y}EeeAszY`v(e+Yc_z`=c?38K17`nPx}pt}yErl|Fh1LJE#CvqN?%<llS7ob&=v)d+jqB-'
    '}L=V@EH4J72j9k>S)<8_8;5>`n{;Uy*pTq*sSc`Q)8>@_yX;knzX`Re4sH6*ZpDS2My@m%Tx!^b=)Jn?3iZR47g;N__W`zC_eXr1^pwp+}RcV?'
    '=@vIS&=m%}HyP%<pV=$bYVoBvfix^_z%Mw$<-rzL8xEvUA|QY4(lLyUx()Ukp1K+j1a1--'
    ';fidN<DE4#REn1?sI$m$g_IEq+WQZVoWKpROGd%7QKepdY{3UCxc`M*|;X9U7kf)n2fw8`zXNhqojv1`|wWO4B4GvE8Bz&?;&ACIO}&XnfO{zR'
    'ETc7Mr|V$p5m*=wMKt5F_vn8ph~+FkbSHY^RFY80QXX?O37hKIZM)lIEg1vzqKvCjTr&cD#yY8f6x^f$tAlj1CR=mmq$fB)q_w*28kVK)&d=T='
    'XD4Zd!Bb_Z2e}csBWh*=kRgA@eKqOJ_Q&w_dDl_cArH!c}6H4v_^SH)0v#Q*m()K84uT`oR*mS6Vj=$~$Ekst$+&^O~^pDphl0%e~U&Y1%xm&^'
    '>K|SLm#<u_d<0IEe{H#7xA!2Hk<W4hAIglarJ77MK~>mR)8Lvm2t|rSC=0?trr&iOyR_2l#sjgJF1f9oY9lw6oZ@BKS*Y#`E2^Rc$NddPJ4$`N'
    'b<+=J<4^driezb+CeqDYf#I@Vp##x}DLdM6S(_$9yQK7M7ELjEgO!2d(1`@!<mo2C`No&~&rvF;|=i^I}vC)l0Z4q~6lStx9ah@dvAW^j08vfo'
    'NQlcw7k#SUQ!utFIi(=!5B3S9CRrc(l!rxR)QJjlBdzLPVSCHsKnWT&U-'
    '0F^F4L2UIAqlcRG#K!rU^ORtQBbhf9ngJtrmEMlv0Yo=&kgK*H5a7n1}On0Xm+Jr;Jyr-giwEP4$!*`!3Q~h0{O!Xg>&^z7<h#EH+!Pu&;l%iX'
    ')L96kPa>`a=ApP<DPY!x&&fGr(3uTlSS@lI>HO<<&lGMOR7Bf>9^s^{x4h^Dxrpz@r@r|r;ZB4#l%neuTEEkNp&|gk&?a2HgE2@sx9glmFggfh'
    '|7<PtrgDFh_=Q#p)!Z`32bveydA>L6I9fMgW=^AfIQ`n($g#4d@cFJi}&a3(KyHL(*6<<z~eNoAj`r~N&)bgh*TM(rN{e6sp%7$#p45)4juV@I'
    'YxKt@keq}gGU48{Xsy1H+z&iB#C-'
    'GZF0P9qy|J(}6YE{RxRowX5O?DRk32gisNCXUV9`cO*QtEw!iGXsIA=je;RbZWUs?mRbUA8>4{BGLp`qy&J`YcPr%rHEDBuZ~MQT$J7O$M}+)^'
    'y6ioPul>2}Qb25UO=6IWhR}c&EocQF;OKM@LRv@}oe$A1*Rpea9Mi3_(hzuR>6gek66p#9+~+HhvJ0<sqcS0)^a+{Iclb`HFe)=$>?LdA4g<i}'
    '2oGd;ukW;V);mJVUB@8!Iy7Y!xI-k@3@CKYf$yoy*NN*<#XbA3yS76>L{q1qnpfGJKc244Qo-_m=1`Pa>;L0(T|nOMY-'
    '7y^XwaCU~PNG;)<PteooF_GIBzvy#6?N5p*oDS(*AQh}721}pU7m0a*SqR5rzW}lbqi2G5=0398r!X81Qy*!5g-'
    '3~Rzz)oB;TB^brU~RsPUsD+|E=D4bG5t%Yt@|D=Ol^mAVAPGGw*n%;NyfPJi)LK-zI9E$<*aV}=e8Y8!1iU&2I5wXIiT5SVL5P=$+*f;G(YR>q'
    'bMt~VsR8<C-Q0;DO0g=P=ahpEvR`=NYP}MorAK(PWIeAsJISE0DA|emnhkF|Deq3>3Y68C@%CN2hGO}%~$HDpE48o@C8anc|X*nr-kuxkv7@C<'
    '0d<%KFKiIzmrY&cwY(V@{yj>Qvwz@f8&oLog{fRPUiRpn6({D$$}3tdrH=ebaYt!29bqZU5t_u$MS>p2cDgVVjJlNxh|YBhEeQ`7GmyV#GmV?Y'
    'p3NQoePn@eSZ)W*{kJ*F0FfzZ`mvc+d0Kx^n&0yI4kFMSAH&$PMf9N!RKz67PXd3g-'
    '*L5uZ~Ro2NozBF%nhH%ZZVdk=xtPW#^~wo=&@#81g|Ar<}RGvglPZ9AfD<_8XfzZ+QI3^IPO?4*u{xmlHW~ShUPY(5Dlpb<CVeKp}>|NDj|Ozu'
    'NL>J1D{<pHlKs^Y4*h(|G=J^sUAduRUTj5}C>A$f~6xlY&^=kFc7~r0-'
    'f2`_{*&l1LqVaWke&p5m0wX*aY(>1(iWHZad4V&1dhc($WdkgI@da8Tz?Fi8Sp#A1W6&8*z{JjLHmO<)zzfYq^JkVlJ>^v6s0JK1wGAHevYO1}'
    'h>DBcyK_#>M}i9&=w-r20^0Rw{SgzNf~jU74bgJ|bZC_7tTQ%ql>K-'
    '^FVs3mfs15a(fm0(kn;Qr7&Nf>~?CSMPqTXPhdyg2l~EUkCW)b^L*Mha2NGNTNVtdd%Vg@DGX5o+4}%s9QaZwGXQpJVlai+l2_rLSQ$o<@N(tH'
    '_}(56gq6(=>d0q!7{gtI8Jd5Epwo^zUp6zi)-cfwn~}{Pg!SIgnSx0~jR-2l!PTUv+2dxd#Y!ZjQPaC*#xB$UMF5j?EtVD?q8upf<-'
    '|8T%AA^UcyVy$QY$winfq_%1>Mqn}&nChFB~(#6`&6xiVeW{n5L*>MX+LXdrJvnpvXu0xdg(+-'
    'OMshy;4f8k$S*X|?HxT3>YN3X<i+U@WJp@u_Bd+ZdBqqJB_{i@rdnOa!Z3HcmH{JD94p{R_ziRYTyV_Z3zva^vYXLcJs5_qBySsP6~f)!5DCg9'
    'GniR%0?__3<w(a%h|TjikMi{6Z3MGiLUy)<Rgrwtxea0<+qq2%giRh5qNbUVRLu}$S_B(DHuo}G=~wMHlJSh=Xe%!v%6x=}h;VkKhj)D1pmnLs'
    'R|k?sImlLm+>l0vp^gqH(o%`y(=2X+9P;)dCR|56#Ind#Ygk5o!glRoxt>4r|H&2;*6{DU&r!=P}K{s&QkiA0mY2IW)N@xJt_VepxQxY~+a{J`'
    '_oN`;fTJ0YX1m{?KzS$%J5BV?*$GWut<$~en*E4bWg!c_Ax9$H`RV^GGvG=U*D-!cN7mBm=wyC-'
    '8DttKB5jyO7!A}0)JxH0<Qi4zOW{0Q$FHd4}Q;!`f*ToV-WaN(Z#VA&)xY%(B(N;0_xD|xI*tHpn2x7?}ypg(}uv?XM900A3sS&1>_yPuDY59V'
    'Olx#*$G<8*vBFwI^~kA8Z(Fd^Mc21E0YnuK|74qDxIl^G~YqOpvUw;dZZZdN_c?Nis91;A81UIasl;8-O!tKS-'
    'o(0z&6&dz}ww;XP@mAs3ZEEklFoo5<pWTzyNo9&iswx??FDJp%-'
    'rInJIQsZ@I>HMGHDIApzSk1Bf6n}DYUn;6?ExrW2GC`43NnCrSysL*Lawo_B&cgi0DssI2!;?Llzmqq!1QppOVcsL>CkUl7m!5&;k>4+ASu55G'
    'Ao`2rx+Ck0-Rk<@Y~<Y8@c|MGz8kD*ISp=|Im)@cY-'
    'p`(IKD<cnajn18r%7J5tyMb@=NA{+TAXmBHGsK469J(cW`jhE9_j$N4aYL<GBm;nuhiyS;-BNT8O?qS-Ot3fC=}UiA`GmVcOr2<wL+x>Da*IDA'
    'VyoEy^L0u;t5mT`0>goEcys)v~-=A}KE(usb_g!V3Ol#2I=`FsaNeCsV|-'
    'IQPCCTJH67F*||PDetIKV7&7~jFR+bL7^Wc1>#~lMJO2Vbo_YYFXygZq~e$C{@lKYl3Q;WrGZEVq0sN|Y<JoT?K?ScfPNS_*Vo9SOE2>IJ2!<P'
    '%h~C<(pe{Dr+wGHL0A6r&SN>(WK1%CV;$+#&FY!^W0cE=a?hYyuZb3lBS&IFt`Ix2Qt*gwY0AWpXjZNuhJ;mgLlSi{EoR}G6$F;#E@?qbN#2SV'
    '#FXSSL_t_dF2CsdzE1Sjvr|^@H_sK&qA*R-c^lUYJCqgYQXy)XM;+vUXJnqk(bzdVZ;g-'
    '50Wgg@9+<7RIglUsbOQ4FFiS4JJ}HrT@;QyUnqIVnMjufydwMBXP$i1#0!)>YrRRHgVG`f@V}xkIz`9Zf@|f|DiI8r6F*$blBumMuanz#N#1AA'
    'infMgHW##vHXLj3TB+wOBpm?n_vozV&MCn0>)hjCBxnES#uHYb6@l7AaNra;lIkL633+mv>V!CLfR@j(}7_8*_ehQbBs3z3Njk=IfN_x)eHI{I'
    'lH&ZE}%iWbTN(M!&y{oWx5mPD5%{gm3kF(aqQG?F$@kNh?Xls}%>uw3pE4n(F1|hv$z$PT?SS1AfQ+$ewM|x6*CIH|~t;ICXnm@sn_jr~gdd)j'
    'Mh|(sR=*_>zp{K@6o(}0N%<8y%X~HjHtgv4^duHJ;a)lm{l_HUUfS$-'
    '3=K<4Wu~J+{;QClEE8xX8UQ)#kKmcqG1mr$O`TOs09nhz~*!DaSj&v%I78py9rIDH%)@0!a0nbl!*<s0Uwz8`fuv@XVfA5L%1iw-'
    '(qi?@%?|u7q_^t&@1)ul7eP27I@@($XE`oMBPr-U6!Fo-'
    'w*!yXFS_G_TFT;i9rXV&Xh|O<OL4_Z~hmf9Hym)f9xXy>6rshiLgF!E{U`+%3<6o8*>i>0~?~0*)Aotj5U<nmu5wP|*VA7boAHKTxF*n!-'
    '(iFaFZ0>9mE762`9X-`*2QrcA+WI)|n*-8OV<aO%K=YRhfz2N`XqPBUL`xvAfqJg<k+!RYMqWbTGPCFn(-'
    'Oe=>Srh)V#^bzs_hIa(RclEw5TU|V=?ZvMwbJV73&(N+N(FjITx>3W|Q9*BMO&ux)EHlH<2rOX04SntIul{ypXe=4W(6y#dxy7(Xj&2<ElC-Uh'
    '8}qn;*s>T5vuLWxfCD!YJjrCoIn}901Of#Toj*h}<=8HS=u!hEbr-&(0jh#j6!ZPo^*Z`9TcWDu;Tk|0Sj%j`6H|KTH{-'
    'wx{BFIL#`_BQ<V|#_bY~PekLB5{-{V<Kq&ITcUBRMB|}oJp5is>w#igTz2AT^x5yF?ltAfAEvh@KxpjAAey-'
    '#PV^v}`wECRc_5B;Ab{_8w)1+mvU)Z0dJVHL++_~R&@+>+8RY^Kc$ODSde={cm^Qa1jpWXH$Zud#miD|BQ<e^0*Q9hDv*bo3^*Moiof6lK-'
    '}Q5io2Zjg*-U~eO|~3F>Ocy=2AWJ64z4wNpC9xdexXVVuhP&IDspgb^E4M6^r1R3uS$@*$bJimiDI7WT8};jLA{9L027NM>N-'
    '(~U`$#0Ynepy_sV2zh5U^UZat6R&e?B8{9DwDBb3!_Wj>biTZM^VWwBifY$?`j<gs1~WGVJ*uABWjAIuM#EGW}6&1m}HQq#-'
    'u0_DlmGG3pusuG?>`AS($|KhK7SOXRp+1F`U2yS=P>*$hR6Ddbf0;givNy_UlufZz&Pw|TpQxE$^J0+OYUeO;RO4)7>uxOtIbJ{750)RUaK+|j'
    '&0JQBXZM~hfZ9R$f(Z19BN^_RzPq$5?Lm;(Hn!n37VJWaG?31huu62bWzpfDXRy5N%IhPa$hNhGKFdz95?ji+vS?@N6JphDUGw{_@!@_py>Y`a'
    '9R!$q;wXK*!h%t+H|Ct<Q6z3juuSyPdl*0ns7@{<>M_9Bj_&npUF2xgpDDdNIYqs$3!`lI@z}07Iq@Rq&m9ZI7OT*=<VYe%;gbE;cJ@)^&^>~%'
    'Lm81e{>4*&c8n5(PAU^vWO4OzLQzQGQX7*1zwZj)r&aIWm4$@;8wAyxPIc{*VII)0<TnacT&IXXksdbc@Q)}g9UYd-qf-'
    'W5897t8Oag_lbS$fC;p9^VnRnyhR&WKZydFyuyRMB&6xl|`QhAx-!M91&tGM?zRLqS-'
    '|lQYp(+$%X@F27GwywbZ;{EwKWaixEw#rIN)0KZ%?RrgJq9E7j_Eu|Yw2_H_*QrQ?^KVOm^dB@><Ffk>`t1_Rbw6@q2PS?8qg?-'
    '~Z<VFh9hjJR{9Y^Yy(wZm9)NI9*EoST79L6r5`TT?BF4sIpUnsbkE`w@E(Niv*9WpC!jXP-zM5p~7=ekr#$b1eEPAqq_#8LZwjFCC^y=6dM>M`'
    '*7oW8~+8}Sn6q-J5kLP<)~-'
    'HhM~`jwS#k3bqf8jXD_AfC)cR6$)A7)!J$9eh%17%+tA^U@&8=G9mww}w8nt7=*eX=df16q@+N%>BOVQRBDlzyc@C>DUK-{@i-'
    '#&*=rqfw6NmxwRcEh<t>J;^9N%=-'
    'P4~;KTOOKkS7y^&>z+Q^|t1k;Mq}x%R<6S2YYn5;(ZK`hChXa=LWgLm@bE7KEu`Y`!&)2d&=8g$k&d3FzFO9vU(rnkfNl!5L$A6ObC2kh=c83W'
    '-QXkh(3v>2IwF($v1OmTq{E0g2veA4-rItr5}(b8v2U-(6@95$yx3ow__mDyl2>z-'
    'mYFMP%h3tK^B?%}p7VkjrxC9WvlDWYKo1WQod9Y3awG4tRE3Jd!IR`LgINvt~I$voh27K8|h&S;Q_^#5Mx+J5W4Jv!DX5pjwEss~h52R5T22R3'
    '$$YW9>?{7=O)5d^@lwVTp3EO5W1CvBwMXzNs6Oa3_8tztc44I1BzjUQB93cgRw43~Kx{957`ve2i{E17gcm(UvWH+|F4I-'
    'JGLvCy}rxEABXvab%Suyewi8iJkC@2~t~}QDSOGtdm9XxQh}3_J<N(;PkJM?ypL0U8;4$teZc^3HAqh!IG1gbKw=5fW--J6|(-'
    '*|MO4(&%ahL#S^zcX{XM5T^SizbAQ6n^+P$A<sJFF6kP+G<apDBIbYyHQ;v`9KB~V=46pMEWNJQ@?&ivPFWTntWYFnjmF==giaF8E8;lp1$WGU'
    'hn4^au<4QZ`SO8ORzg}9E6kap2c9MJQxrv}pjUN+1mjl1l0%qq)S@cB?d!@RTT*W6(XdI7+@34?zYh<2XfWYa13ZgGhB_0N!NOf({WRI^Z#4l{'
    'o5;{w^rhlj2&lE8dXA^nja_>`$N2*=-'
    '{7#IkB9$r(Ck8IEQ8k4uQe9W68dr3@CBo>$n2l%gyb9>eHTqm%lsGSsa<*bNuS6MU7`bTG_xBRnr?XPPN?zccV`JR{A;;k>%}Vd-'
    '<x{JcoV_~i%5Gy}eD?*se}m55#xps0CEsq_T6{4sI|qj6fAtw}2C%)b8mN6|^!waxn)aHm&&j3rCT8!yX2Kt}s?RZEzf4^NWD%TTc-jlz4LB|t'
    ';&J`bQRmFcP&C+%+Q&!Lyv&VwcrNxN9R_jllZ*bRUodCx>BsZ|F}%0tge*-vaTVC88}gscKmSRQN9Tr)&@nB@2b!Sz>foA5aE0)irO?}bT@t-'
    '!DfA+6SzenMfo#u?#6TGdGR|og;h+tV?Nfg-^TW{go_F`HN8K+@o~NH%GoebRO0I!e6J;h-'
    'j~!MlBo+vG$>M%_ZLxe9CXpI+MkX(XmcW%8^Bh~RwOCk>C`A|u`m<A5WGfm@=|z>xq_I;O{pF!Ie#ooenKgnOhEWBv1WmN($}n0(Rwk5EFr`RS'
    '=LtKbTB3qhD@{i!Ng91lEgGivmkZbNp%hL7t>Hbr<L~=l{@?%k-'
    '*;FTV`44g@HMV2*EK*Fp{I1qfKMne_;6d9oXUv?oI38bDa+{UtXpVLD@?58q)2JeE|gPec5}w+vQl)zTgL+i1ntVTIUgoyNa~6a0KpCah7v4LH'
    'U|)gn;vDlqzdgDJ%8)r;Q_?(9j2DUhez0SVS^09@LxGs14!ftFfiEk3@0!qbTMd84b1sZrQWfgq~L=&N;6m^Cp0WpMDo#Syx!W{+2J`CG?Yuti'
    'o`CTGT&|i`yk}(SSAICH#j+(`^;9#-'
    'TJzrSadX7FUh{SoKN*6XX*Deez@{;%M)>#<FcKLnVpA7*hJhtYh?V$7K&lVdIY!rJ%^O<C3FHBm7YKp6({6$1|GTaY|I<&VFD1}!$ccicwpEMa'
    '6lqs5e1B)Y5YVy=20>b*wg6w*$l!**A{@zz|6obB#XefUM_-gi`Xx?!|gAakj>)Sc7cm0z6T>LK@zyWKZmil;-'
    '#0S46~7FmN3Zi2XkX+j)(6$y-'
    '$j1VJ$*I0GtBzRdJxfM*78j>D5=3|Ak1lP`3NqBR#tcPd4KT#tcVB{xPM2&qF2|fX%nEfd5XSs=UqOZ#B6=K)FCl8aJRj!9SSoW!t#FwOMKq<O'
    'r6k+;Bm{2L>>ZWiT!jX=t_*Yr>8o&$-)RNG5D8t-'
    '6r4jtFr>yMZJPC?Jo0L=w6nXkO(B8kGON%Wn5Yl;Z$F6dyck{Gy|%Rw!lk9Y5pHDGeferpVe|Sa;_Z7_twXq@sd>qVYsOB^3|){^WQpQyB?sdJ'
    '|_caqWBpW9A{`3V(48XT~ysgXQ{>%ZI-'
    'N5_ADJ7z@B#3adV#{Wf&G4P~JkS8y^2AAtDf5u2X)L5Zd!9QmgsqtTStJn{Qmqq!#~2`I;SRVmtbteNjwZaIqH_{+s6+j3J7wU6F}w5TZuf<hZ'
    '#;0Thl+RuoiVUr(vD|50x8@tJ^o@j#CXSq&Goq&<50VEa{sK1x~0hV!-'
    'eo%F@xZ7Kdvr+3rRa%#%Dh9%UYbCk;S@Nw#XZj%2Z9((8kSA(XlCqrXGUSIv=X|8)V;)C27Y5>x2w4$8>2UbP32qT(b!2U}X{pz_<2fTRJ-'
    '@hc=<2#lJ1DKnrC`=$0WV%%;$bY@&L<}3TpoWc*X&c=Y>z(GQk%B$5Y@;^-'
    'GLgPm}1*8R$zIsd{B$7of&aL9Sf}6HU)Vu@93+5_98Z73J!j^m0G$ulL`G9?K^oF_}1MP7HaPS<e%uFbuuRi19eoQ^PV!@c*D~xz0?m)dZhu}E'
    'Rk4ndX{{cz+|z)Jj&`KF{c#;N5<w(Q!5LO4BZd1fJqi=$dOBB@D%5eq6)5fJjeT2;=}k$y*ZdAh5D8wOCiM{60?JL8x2RT!MNY*40r-'
    'Uy?$9n3PvK3#CknK=CCw`cu_d0=nGuPdh%zmFv?6xNCjO4RgS`+3Z;to`-'
    'J8KJDM=zsRr@%WeRVw1uSIUqh=eK+csw%<0k<tI+o|Kc!m{%$bf$)))Wo$!}w<=JSNs+K}R;U^#SzmjX2|DA@b8tnh3AY+gFk(i1|LFX|(Z6tQ'
    'm2g4vzBtNZ$bU1?3diH>=LJ>ScYY%{ihmQCzf!?<JR8seq!4=b1%%N2c3VZ(kfS`yyj^=2@e<nSLitHN)#kldS-'
    '=z|mQn=HFIxKIa%xTA!YzKxMc{azwaurPV+gVI@_9PVxe$lgh3-'
    '3r(Yd)U^DWc2sNHOCi6NXI;)MUEoJausz#PBD+Z8rm4lc*T5DjW$gzG^km7KG+S8nTW1oy6d7iP$ur_m(VIYJFg9wD>+=`%ht3!NbUCrf!%4Co'
    'Z<p?DFEm^qHH1gQ0sY;!rs!?OFN7<V8Bzk)!e54tM__FC28;rGVj;HT<s#qJw^m?yzA(bre-'
    '`BRwqvP&CfvsujziQvhTS>aX!Sbh<5BBue0I@olRO+!nsr{dEy3_z-<o0tw}l-'
    '5Ef~Pzt!;;w0ZieYZOu0np8A1T??OuToeAZK_^cVy*fi){&e-'
    '(j=qdswaUNp8#_h9J$r+F}c;cYnB38kJ3KVN{Oa;ch6W$ua19%9FerJJw1M7$faR8#nMQ3CBP=8VONQ~YeghI%%UL;cs)Q&n<9EyYe1ca2pPI~'
    '|=NnNq+%4h-^C-V_jaZKMyVYxR9_e<30;{oPHVMwXS^C%_>E1|?OzC)V|z(!-'
    '`1X63Gni7z{+FDTX8;@=iKbIQl<N_?y;Yc%*6iocI0W<E4RKP_SyII#|>F+_)W;Od@YJAtR!+7Njv!k2~v*H_L^{Qx=xGEA<2t-'
    'zX<?U7J>o}RCx#02xj5)AeG7gZ=Q*!V;(7%s$BkN*X>&hwg)@R+qiqds@=QzVlmLc>7tZVP`{Ma0fFHR{A9T#+{cM$Mnvq#CCW<*NL2*e;=iQj'
    'cMVp&iE&iW$mcjSYH(~nwk&>+|~NG7f*@YN#PevSQvlNY{!gzsN-'
    '`e@fVaXBuo_R?}p5icduUX@Kmz%w<mH_CLgmfSuWEJqvg{L^q`4nDyt(cEV7GwIE$$`cI@wEMe}*Z>*sk__ZXNuf+p_-'
    'i~to<0h%Y|7#s={))1P}eSO*2pZ<zUn+0IFJ3zc_1MZ+Ih7#knfsHhorB(%<2e8`96#B2PSK=E?|J4nZ5CwiiC_P7upL88(<Q=JhC;5ZR*rfov'
    'fwmtR+>5TASVY5&zM5<4IJ{MfFFjt_|2_L{KR&fU-|cHL(W^F41JRN<2k{VdLkmD)S0J3C5I`yZx!xI`5n$&xG_a#E2e9bR-'
    '7aDa=~IV?wFjYy8!~nRa?y>oN}L?~BXPu+tW**kQWZADhL=tv&g|LzScHP=ruwPISH#4y-'
    '!I@p5(mHX1jk&=2pRYaR?YytWR=R+}=&Y&5Xrgy99<SXmQTaJ86%WHsmTd`N8mdJkWF14qNsW0)fd3<o`xc{1+_yIc=DW0&i;lvXEAtBz~fSkJ'
    'p3au!CTQvlV}r#R7rr1Z8~ZB0|}8&+OF-Kr(cgrq3c$%CSdcdH4$7saw9UeITd9mO&ubKZ*ZSiki6_T=|N6%O{@a{Ak|JPs_Bhi~>XPW{~#gy7'
    'S6c=kr9jPAG0Cl4{2L8)gCS{t!Z-bj>!^>q?On2p+Dnkx*`%p4~2?Serb-E=lK-'
    '&$a%f~_Z8ZSl8J!=|=jQ*MZWg^MjQhH7{whDuwd0(N${rly-TzA}wtd**l^OY0wBJu6L2Al+0AeNiTu2coG3p+u{olNDC)?B)SBhKS=zi}gCo3'
    '&BL+)9qTt#V4S~dsn2PN=97>pOwcE1;lESKW$shfS?`{S)%Bj<xO3i`I^CGvs|1{-<fQvH^{mFn?)!EK*)Z$5d4pSem)-'
    'eFNPg_*)hK8_d#g)MwEvBswDKJP1&s4Z|+R1N=-'
    '(;#H>WnVv)YT4w61US)W4M9P+9p*6MZ7M=^z9=avTt^kN*{2jN4{bLNl5*LUOdRu2yB!MIg7vWQvx*F?<tlaLuAh)|Ldc$;;oO+=HrPr@XYcri'
    'w&z8C$3kGQx`2bBeT5nxya`2tfjG$hX)UCz|isnpX{QN3+c^mrNAsz-'
    'X{bK$ESGIOmCtI;Q&<ifQcfe<I4@vPZ@`CYyP6PvKI@rXjtU))(PM<m~vsOhswAQb34K7Pbn4muiw8h;`(;INmvxev`N!TZH*z0V5`jnA*-'
    'LA%7vsq3P<8nKYL0MWBu-Ppy)yt~rd_-'
    'X+L=^v!q!4%o@`!wYn#dI58_#G!?W*^ea7LE^pKT354h(kL;v@ShAJawJ<+@7YFTJjHT2Drt3iXx`)Qce%9o0W>~OU^ex*!!t!8c}D)MdqnBwY'
    'My)vKt4h#KE4RAT$c%zG2J^Qp@eOW#6MDm*j8R<T>tbA6mpw8scs%0aTIKD2SwOijUbA$WRz|3wFB)YA8jQ@YHF_aBL*Ibraf)whj1UcP6;N_U'
    '9b~9?oH0FGKhU2a;!8+Xf|eSuE!vhM3ql{(=RiSOR$-cEGO_<)y*I4LCB5$gbu!3EUDbq|5sxA1SbTERE7zEuw>-'
    'fF$tJkzt9Ba`;yo;Z%%Qj5&tO?=+3e-'
    'sRA2GggY0{nYWC;1+l(iFP?lRW(jQQ@WDHOeAOcH*Em(m<kM+%rss3L?#$g5m5e|vsW|~?olNtQwzBEI(~J*y-'
    'YVtZ^GHdXRl&eP40+~0(wPdxVH6G1ReE<Ln-%|6Xyu$)+*WQeBZB5Gm9c}D1=HDh3i-Z-'
    '5QA7?KBZ%J{HHBJWqgjas0P&zdIViP*30y)!eUTT;??P^?`-'
    'B5J)KW>#EBT9UFZ&4B7ktOYa6G@bt4oZ@#4;PQ}*+;U3<(wfF+;5M<l>MKK6TP%YOz@$asE0TM&6$V=ZEyzlhRhIJ$TO(4)1_o+5;Rz%XBf^Fo'
    '0IZQm*P%YD63*Q4WjlT_t0`vGHa+H!mU|7o!PgT)k5eEC)mAc^J+uX0zC854FGM0K^qst9Umlf7L@u05=C#jra9C8@2aKq%HD`EX<q?j*9%e5!'
    ';%KsSleDMV6z5su~<}5M5QTB58FW#HSt!`JUmf&ClqMR=8%x-'
    '%OBH&z#EG5}{?YoxofB(~eA*cRt|NXcB<{Pk5GY4$P7sC8Rq`)%YK)l2qN_lC6m}-'
    'KVV!{YLKKP6SfVR^BRlc#aA3uOyMaa>x<%IAPz$ch{C#LRi|9OJ1pr$@so4}qeDeFAa+M4+b%kU@5xn;ord7(42jNkq%5D44Pe*2%Ez3}UXXBn'
    '>J-NKi);r;f%zS?dS#oGx2AAY>H0nWq+`q`m{@w=dqi9WvJIg>9Qe0^v{KtWaqfd&8K_-tgKz2fDFZk5Y0q7nlc>siu_Xoe}BYea{lHnLkxnAQ'
    'm<flakjSYf!<blL&1cy}qCGc*DQ8L~r0`V(;|t}Ir49nucG)fZq3&y812c9p0w?=9?ufB0T#xe_0*Yg9TscJ?X!A!c#f7RJl0O|-'
    '7T)BC*OevC^yOt*%~T{KxuFlE2w>iD4oQdsTsQp5|g_i!)<>I#zeD*?}7h#!N}SxIPs6W^QC#V_-'
    '=H1?WO68ad2=p1S}F3O}LZ`h$y<(|XPmGepJMX?ZxW^z@R5!qBLO_aE0W|URq)AE7@O9L!Uf`hlIL)!&Y$zMnps?L<6IBD+bP!*Ypf<i8mVO`}'
    'vs#0&t-{#(wtM84L*Q&EhmSr*m5?e-g$p?|y`(n^Y1WPMm8&aTiD%?hf61|;BhH-1&(B;Km2kF&`-H(o_?D6^y^F>O?YJ$<6#LM+!_Lflt4&P-'
    'lV6J@=rmk$_5#BsuggrLG0<$h*L56Ti9wIcx1I)W%1vGk{d_*_Q6;@mVuk`TyZ1_88I(6+A88Te%qV=oFOLkZWNbK~L`Lul3M&ey*R_KHd!F+G'
    '1oc}?@2fQ_QWM`)M`e)-'
    '+u`e@~`2yp4jUSBdhsNolHtU3x4`jEd**94a(zVP`kR+q<5xbV!g+TRbKen&R3nJxFesRHoAEVfP?c;$gD1i;y;xq|H|L`{B&>%z-'
    'k2B&!V|9tCO;acj28`tB-x*krCnHN~ZxPk|TW50n)PpT=`NTm-'
    '0~tR?%G+vGP_O@VqP(<}V+g6yR=Fa)GUVJm)Rm#_XX!7P;80%M4{ZNMj3^%0K6RB9U{_hu=M|T+ia^h3n<;T(Iys(;4`ul^0J}BD$^l5WfsJ|V'
    '!CFzw1MYgqa8r>O;ACK$ER1+OfC;t+J#!E*X-0NC*Pnc$K)qAfniaNof@A*yzE&D$6=nG@QIzHQ;^V6Q#wVA9;l-'
    'e+`+|`QAI!3R%XAKItJCW6*r`(snelO>mi&2$YTMjj@H!16v{7n`)XG|}fsOu@a_clOF(31q*GI`!_@`RU6_-V6bVeEAAMHh_-'
    '3l&uni~{Jkwd17QKwyMVLM;Vul<F8HxE;{aH)mud>ES_Xqp$j?x&<Y$>ayt4d3@-'
    'T0~rJm<}{M?Y7Rc+t$=00Eke!MiOAC&%c<}nlD?*>}8kfe>5Frtki4E;^pN8Ko2`;RGNk6Ibnxi9M=tuIT*f}5*F>9L@onhO88@rbx!E$A(M#C'
    'J$sr+?Z}ZVk#aOO0j4zp;#jf(tVoV=Kov2jcDnZCoEnT+5j?z8N*0=CN+pb`v?=cakYnX(Ju-'
    'u#BsrO2UIj^(*qb%X(NZ*hSSgXFmP;$mWB9()?GE#2qUD^-'
    '=aw35dC#;}xH{gl2Szor_4_>=lJbOKM~I^0Yo$)LLM|9mOm#Ibz?a%7%T8{mzgyMR2uf9e><=!^`=jyYsMGC?<m9>f<n{&q^*Qg;McQ7hd4yCM'
    'rQ&%;b?O7E{_(Nz2NmiR$HcE2`yyZzp*bLWI4lY9W@H_cy(8NEEZb93&uzJULhE92e7p=p-=kMyh4kU6+61`Fx&wuP<T=K3NmXQ}Ev-'
    'o0jH`YkwrE(9-pT+H$yc0O0-S<X-'
    'FTB<{pIAi39=m7dE_gi0K<}d)*U9)q`#F@cNkw+|1e{kT_23n$Imk!Q2xPMjJF?NZ*T8jNtfBZ&dGb!t#zf{QD&<_Z+u)uf<<L+q(Ko{a#Xd&i'
    'NA#9+Qh}4bv!48rpg%NYFQHz0OaWh!O5-V&1{ZdkKfKJ6ggWTMMMG6v-K0X?JG-'
    ')4<UPJLTA%<tgnj3uy3Ap%we7F9&KzsgM4Pg>9#0_U0WHIz6siKuf=vtHaexZ0<p>e2hYXahX'
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

def root_for(explicit):
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
    if not (root/"graphics/summary_screen").is_dir():
        raise SystemExit("ERRO: graphics/summary_screen não existe.")
    return root

def backup(root, rels, dry):
    stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    b = root/BACKUP_DIR/stamp
    manifest = {"created": stamp, "files": {}}
    for rel in rels:
        src = root/rel
        existed = src.exists()
        manifest["files"][str(rel)] = {
            "existed": existed,
            "sha256": sha256(src) if existed and src.is_file() else None
        }
        if existed and src.is_file() and not dry:
            dst=b/rel; dst.parent.mkdir(parents=True, exist_ok=True); shutil.copy2(src,dst)
    if dry:
        print(f"[dry-run] backup seria {b}")
        return None
    b.mkdir(parents=True, exist_ok=True)
    (b/"manifest.json").write_text(json.dumps(manifest,indent=2,ensure_ascii=False)+"\n",encoding="utf-8")
    return b

def install(root, force, dry):
    cdata, adata = unpack(C_PAYLOAD), unpack(ASSET_PAYLOAD)
    if sha256_bytes(cdata) != FINAL_SHA256 or sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload interno corrompido.")

    tc, ta = root/C_REL, root/ASSET_REL
    current = sha256(tc)
    if current == FINAL_SHA256:
        replace=False; print("C: FINAL já instalado.")
    elif current == V1_SHA256:
        replace=True; print("C: V1 detectada -> atualizando automaticamente para FINAL.")
    elif current == BASE_SHA256:
        replace=True; print("C: base original reconhecida.")
    elif force:
        replace=True; print("AVISO: --force-replace ativo; substituindo C diferente.")
    else:
        print("ERRO: o C atual não bate com o original nem com a V1.")
        print("Nada foi sobrescrito. Use --force-replace somente se quiser substituição completa.")
        return False

    asset_copy = not ta.is_file() or sha256(ta) != ASSET_SHA256
    rels = ([C_REL] if replace else []) + ([ASSET_REL] if asset_copy else [])
    if not rels:
        print("Nada para alterar.")
        return True

    b=backup(root, rels, dry)
    if b: print(f"Backup: {b}")
    if replace:
        if dry: print(f"[dry-run] escreveria {tc}")
        else: tc.write_bytes(cdata); print(f"OK: {C_REL}")
    if asset_copy:
        if dry: print(f"[dry-run] escreveria {ta}")
        else:
            ta.parent.mkdir(parents=True,exist_ok=True); ta.write_bytes(adata); print(f"OK: {ASSET_REL}")
    if not dry and (sha256(tc)!=FINAL_SHA256 or sha256(ta)!=ASSET_SHA256):
        raise SystemExit("ERRO: verificação pós-instalação falhou.")
    return True

def restore(root, dry):
    base=root/BACKUP_DIR
    bs=sorted([p for p in base.glob("*") if p.is_dir() and (p/"manifest.json").is_file()],reverse=True)
    if not bs:
        print("Nenhum backup encontrado."); return False
    b=bs[0]; m=json.loads((b/"manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {b}")
    for rs,info in m.get("files",{}).items():
        rel=Path(rs); src=b/rel; dst=root/rel
        if info.get("existed"):
            if dry: print(f"[dry-run] {src} -> {dst}")
            else: dst.parent.mkdir(parents=True,exist_ok=True); shutil.copy2(src,dst); print(f"Restaurado: {rel}")
        elif dst.exists():
            if dry: print(f"[dry-run] removeria {dst}")
            else: dst.unlink(); print(f"Removido: {rel}")
    return True

def do_build(root,jobs):
    make=shutil.which("make")
    if not make: print("ERRO: make não encontrado."); return False
    cmd=[make,f"-j{jobs}"]; print("Build:"," ".join(cmd))
    return subprocess.run(cmd,cwd=root).returncode==0

def do_run(root):
    roms=sorted(root.glob("*.gba"),key=lambda p:p.stat().st_mtime,reverse=True)
    if not roms: print("ERRO: ROM .gba não encontrada."); return False
    emu=shutil.which("mgba-qt") or shutil.which("mgba")
    if not emu: print("ERRO: mGBA não encontrado."); return False
    subprocess.Popen([emu,str(roms[0])],cwd=root); return True

def main():
    p=argparse.ArgumentParser(description="Instalador standalone FINAL do Shiny Summary.")
    p.add_argument("--project")
    p.add_argument("--build",action="store_true")
    p.add_argument("--run",action="store_true")
    p.add_argument("--jobs",type=int,default=max(1,os.cpu_count() or 1))
    p.add_argument("--force-replace",action="store_true")
    p.add_argument("--restore-latest",action="store_true")
    p.add_argument("--dry-run",action="store_true")
    a=p.parse_args()
    root=root_for(a.project); print(f"Projeto: {root}")
    if a.restore_latest: return 0 if restore(root,a.dry_run) else 1
    if not install(root,a.force_replace,a.dry_run): return 2
    if a.dry_run: return 0
    if a.build and not do_build(root,a.jobs): return 3
    if a.run and not do_run(root): return 4
    print("FINAL instalado com sucesso.")
    return 0

if __name__=="__main__":
    raise SystemExit(main())
