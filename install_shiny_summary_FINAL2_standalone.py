#!/usr/bin/env python3
from __future__ import annotations
import argparse, base64, hashlib, json, os, shutil, subprocess, zlib
from pathlib import Path
from datetime import datetime

BASE_SHA256 = "31f5b28efef7d3cb5e36c703ddc905207c3586c6cf245fe87a3ef3dd498fa283"
V1_SHA256 = "1b5ca4a4f7f385c99892c721f474b52fefec140bd122b93df6c9ba54739f5f5d"
FINAL1_SHA256 = "f0295d0b81ec85d5c80891e0c0798ba93808a69938405b132123ad0ba3db6ee0"
FINAL2_SHA256 = "56c76236a118d60e5ce34956543dc26213208e45ef616db2129756468aa33adf"
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
    ')a<)_<s6qRzl36ll$!=Gp{<Lhx$?7YY`EwtuB*lOEJxZR&Xv;2bizQx**N)QQKHE1Hjd}=*9fGVF1TIQ*zpcEdlD5R*TM<qs01a&+j!Z_S>A@X'
    't>!0bM0;{~X$<{k<*@P@p6N8-Hu(oc)dZM9N_)~$5-'
    '!QOQl;oAru}4M~jug~pcMCe%CtW<+KXu`}klo@yv=F2njYk;*Nivj(T}fnnc*<mLNmC2`rM1H(?S*OkuVSg3a{E&9+J)x>Q^Q*<+eQ8G0T`iUn'
    'P2dxURZ#bh!&9h8N)!)<PX)!@7D?^f25y$c7x-@BEqIFYI2fp!uh~yY9AcEHEzA>^B#rRkgZgvGxvg!49C-'
    'F7Y>ODt;lW?046CXq&*vV_7nO~SQ8T!C2rcL#fx$*Q|-'
    '3`#^K%(j1&c5V`~oZFlKyvaNa(nMSz0}1l%ex#N)jasE0?*)}6&GHm}dsih%rRa93#7VibfU3z(?0Cr&m&8A6zr4DCyp>a9Inddnb-'
    '7aSF?S(UP}uesM(rKoz;q%2A8uinW)+=L%fr^Q=C#X+-s-99xWc|xqXi5F%D5T46dym$+xAx8vWxSP`3$&g1C5f~rWav{j8c-'
    'LibyZokaGz(%VqhgzBFR&(_J0;U3(Dqv)sudAc^=8GztJQ7_26Q!AcQEyp2csM@)k^IsIT$rR`CB?G43?g}2zGoJ9ab>-*g-'
    'yQgQYkxf_j*JWGDG&4TSR%oJ=k-'
    'tV?U|afZc_xoZpslZxyEl6Ci$WEw~uVQ3t9Frf|SW3fn;BdZ`^l^I>7bX_r7wBwF1+m~14exob3SH&{=oW1acaK*V;j)#>2cao;c<Vqcr7PZ6T'
    'zAi)C!DxmH-'
    '<yLFMVaKu%FdN68TIKS<haZc@=hm{ml76NJwH}HKHlkdnNpIURv=B{`s6KMgwp}egc5cObKQxQO}bU(n|#mnO?MVq&jhe9DBhwBYnZZfYCwyf_'
    '?kU)kxu?wo%40N@hyMO;{|iA{6Q~z0rp%iBLv4>7xMw_Z?AQ5zubwu5(fue(znnp9|aiDVFn}47BWezcKB}wpl1MNhQc;Gw#)onZhhOjgFPJFd'
    'yi;w!gKDybm5>gRjqxE6RxU1;m)b1kzM!1c%5^ituc_36$Wxr>R4T45I~jXN1;^S=rD>ziK3CMCyK<bk0e7~EbXcChFlQnndRGfug<FNwSVu&e'
    'j9iXZ9UmRSRoY?Ee$9V2(`0$Av8_f72wdpV_^otZshR>;++YQcD#kwuPcBa%t=UZ1}67->~V*UB3GR4#3u8XAXY+;-'
    'Ms;GbTAk=7~OnsO>L7NCWrup)<fhJLr);w8Az-'
    'G9t?RIh`q^Hls(JZHLjX}jq!sDHXsH4((oV#@MtDZyPaei*#6KM2n*asRMM~$X4E25O4iqqjzsIS7w_@}qwgtRkIxgw>U#kN@YMKLXs4g)1**l'
    '0>^K$odF6vZN^yPOX`Dq>zZ>rCWh-V={;`@4`{<jG3dNZTuaPK`&}&qlBG<1c)d>s(O6EC!{rawqH|&}ZFi5M55fjZL&p-7Xwmy3s-'
    'nXADhrc_+2W8zxv)vtk?DRm!821NPm;Dj(p^DM({0=4Ooo*LS63OIwZ{IP;0DKJu8=LP%aw0JHjl~meD4)z(Oz{X|lNul17+Z%}7J8xSaJv@<#'
    'zLA4@jkd^;Y;L(W6#{*ukP;fxz71jZ-iNq@PQ@H8pN(Tsy>I&V496#J7KV+(d@A+943!5-'
    'z^jU=ZGzRcynq@J=)3ed!k$`^5u=Agiv$<j0kY$G6a6K!~1j34dZ>Bi^ixHO(6R96#uy&|5=Uy<O7L6#K=%iE8r>o(LZ~Nm%pa1tNthWj-'
    'jYD5p;-~rf6s@I5DQSZ;>)0yGC-(z!x!-amewtA~?pca%2e!)K>I2NQT?S|B=H`(t+5taIh!if5c@wMlHj~T#AU7{X!~>T?zPN%jG?Y5FwdzT-'
    'ih<CLO~Pag&w`*1Hzk+&XuS2h(=Y%X%y0v7<&@P?&q|h;8O(N(+dh!_uQxPG@}zWhPo$Pm6ATV-'
    'P^HTD~V!M1Irv?Z#PqkZy~Z%5Ql#Xnah!Yx~eBzhQd-'
    'Y=*ZKoToEtUxM;9=ro&GJ*GvC&}9L|D{_xCzo6wSaa98X6}n>vk=_4nxo~WZ@fTee)k%nAk`43Y7Y<y=rzZC(yO7iZtZYX4PX#Q-'
    '=i(=!<l2QWeGt~#<ofFoUuG4BbarcpI{<9w)(&M)-'
    '+&k{zjz=wPxJuVoB8I{M*mI0LfJ^yR%q%)CcB6f*EG$=q%0|plBy}@iwnn0VQ<+%0*4qL8f@h%+%YbsC#1Jadg39nexSD{2$<7_XQ!S#P$^*y7'
    'saR82Pk-o<z|aps~eASt{C`UfcwP097dImwkB59%_`e^B>OwV>Mpm6A^ysOt0ixO``3ehH@Y(+=MK6gW$wewQ8-'
    '%4rWc0Ze21Pa<FfKiAbYRTn(fh;PSej^(2beHQr(idnR;%SZsh3uLQB;BM!HuRar#!agb5@8;iS+Mat2Bm^0KKh1!f$PxUluZcJUq9Dcn9PTB%'
    'Q_LX3;CF#X5@M?bKL+jF}UQXWfCQq4t))J}I}Bz)HmZy7p5Uo3=FUkkSqfc;#*hr;Fu-`2dya#)tYHJn<juCBz<%XY5cG1~rD-CQdSLC06K#;_'
    'U>USSYoX^V%Du9;(MLT*k%1QQ?F!3FHmbI@^9m2>DVk%2*Gn22Kh$6@2Je%y>UeIp1!(PI`EJNA{~Q1HP7GH#NU3=1VR5_)VOPvu7sgb_S0VUx'
    'ye`hPBMaw|5;Vf_|E-'
    '%$JAgvlX(7gEYSDtiaTf@7hp)Yny)FoIpYhMKDSMbtioi**5v=#r@qyv9eR@79ZaQ@e@fZRtf0J~Vnx$kY5Pa*LiU`Q9U5Y=Ur9-QBId*-n_-'
    'YJA1&Rjp--z*C-r#piwFwXt8PWr|lmQGhBVYx9#)eX5?HpKlxgFfuhB<1auf^^~(7R|l9Um~WZ8M%TjN1W)hkZw!w)yhjhS1krOD8(mL-'
    'j^qxYZOh+d7L;2LHB1n=$zmI#!;%LAYV^7o#UG79vMw<6=1+tnrYEt5-'
    'Zd~BtYL<LpW2DQL+gFJ^&2{{FgXEc3+N(N!79Fq_dHWzq^LB=losfDBBX~Dxzvi0ag>FOqfH|t);YNU;>-#I*-'
    '?;_$XhOza6y(SAg)J3tR$$~QxILvklVYbhIbb$Z$b;n+C{ZOwA3<*q*k6vR1H1@E!?wPDABSAkJ5Q^3UA6!;UsekCo4^%aAA=t$FK15JX`qQ4C'
    'CYOfErD_?bf=tagmlj<%;Ceu{a?kzIfTc8jKpf(OYU%JErRvbTVC_g36be6AYk)L4758z$5zhj9&Zqk<tBNxXZca!x_N16ONPK;?T3u$9o{2$&'
    'yUAA)`nENJ??JoZnh>BV>Fy5d4h~P1=cq%O!bIjV;!G_4_SWWWGr(mhM25v$JNtD@C7B%pryn(AAw1y?JELwo+MRx0CNsIh?=Aw+I9?nMq1{8P'
    '0FzF<P2XB(aqwpY?>hD4)Tu(bT=sQgm6N{06%#dUY3S8MkX|M@dg@@u*_e+xqC0gX9bUH>h%WYW$50dw(nE3;(wb=}5Q5GTrS;vK)&luL-'
    '}ci!EOmj5a6WJVhDA*o!FdVK8Yf@X1k1<6&UjM;<1S1)gT{1}hkNN6E~ADX9%rb1xIIwq*2q+*uf8T{G^^UEd4ns+dJ8uVn?#jVFbz@%o2pZXa'
    '<*VmA2TV~i25$6Or#wvdkNpy6wo==rNnrahZ|(|l?-'
    '8(Px+b!Nbnn>8m8YcJ9ia&@K+P4!@%sj@ee^n`NF`Kl36H@0wx>&%9~ZvU3)C@GsZI3FqeIR;}Ct||$phB@sMo>&?WENMtGte<B6K3+KU-xbx9'
    '3J+rG&DhoX7DyF4z`asrntQMKt#~+A@t{rG8)d$vUt<vtKG@I@PD%|SkR>{)WJ7~^Q*IFY?8Tcp@2ct`6oFLNIWO8&_qF`)(+kj7Lha<p-'
    'T1VDV$%emQ|!>q%$^kVhSz5<ADfv=J!5}I#LM=!EQ8nZvG0D-?k=-Kl!UyA_6e-cqTji#GU+judm%}XT0%;-'
    'TAh;AIOpqx8_&qQqDgrsr?&keCv9gcAZh{>YTC~%y=Otn)p%yuKhzgZKj-IPEefHkNn3U+GLGg9iPe!t#pXNm;9pxmvC^WEQR*^{&dd~#{QNRG'
    'Yl7*Axiwg-'
    'C1RSr4wfwYxQ3e8&)6Rg2;7`<Lsw{GOiLUQditPA#h5Rh(8fz*3>+XlFE*hN!9XxMhc&S&qj_fP;$gqt>a>UQ9+6tsOEeu{4aV(@izEc=X_42s'
    '{d+&z!m%DKC$CMn{h{4WwlZ(&<xr27B(rIw+39vhpT@oG%On6`6uC{`x4UO!yZ}fxT-ejRcK!BXc-'
    '3oQw<+wJE<Se3!)>F7!|e<~^gZL~RsB+9IO=r}n^OSFQ7R*9Dhq~EH*+j7h{OPLblT*V6(-'
    'b1NGv<4dVBRpdNAm<!jooZjt4>2ezB9vC@smNpl!dew)~n{(nZsA$zwAY#<+RayB;dLCP%A{xezI5locul3;k}FQY|ybb2S?G8kg+~o5Ixyz3}'
    'AV51tF0ChQ=`U{Oj;hdH%wNewDF+pf{OxCXUlJGJ#}XO6Bz0#^<8duy&{5@VfQu=nfla_4c;?wz#<>BgP2f`*;5WTUwicD;!i`+#N;Q+tG&n;R'
    'I#M+c&aCsBJHUxLOL%ojSh?FFn{vgw^~1G0j9JC}o=4?2LY;rmX1yIc+yg6-'
    'S4x1LJ}NFH!@Rmgq96T<^KGEv&hYd>la;9sBmskzxqPAlLyFst6De7TK35kpr}QpMQ;&>u&aT&+R7&G=57Y1#N6*lmw439jx22@piM#@iAiU|A'
    '_XS5(xbS(DA8$mI)jq@it4YbC*u{3|t9Y!We#{>MLztTatUS+u_mhLRIIJ}Fq1roQ)R`HjhhBaWP_@M_{TQ4h2?%XI!~&Jz`5b8e<ki{2-'
    'aspmaVN~q0Q$3?zfc64bf+}S>Z!9-'
    'SRkbG3<_5&lpGdox~=JVD!We1`M*DSN;hI>kwt+1<Fx~mN&JW6$x55B&cd`fg!lD}|s_B#TtKGmx5581d{S673xapUYPnU_{cYN&bOa5WeW8l9'
    '0w&@R{fw>D+yW>@wsqEG5V7u1UYW8Qj`FM+{QGGi27Q18Smve_LzZV~(_z}P+X`h__)fD*p2C_Au0Zo{^F=NSRvF?dy!t*wX+BzN!z=p&W3>g5'
    'T8pf^I0n{Jn(g(C){fa-'
    '&Bf6%!afUq7v_0`m`>+09EgjXv;c&kupBK4Fe{Zz~Y*IeifUaiGF=REW*MNN17Uz%~0p^w^%^iluQ&_^B<5a(Z{4ZJfNo$h73H%esvWJfZy_v#'
    'Pshy?%na?hq@pUucW{6W>4hXqS(Z_n)zG=1qRO9%ndYc4c%`OBcS^sVXed4B6T#YsvNVlCciXQ#R6NyXVr5|{K?mR|XE50vw=<#<7&pXG@Wn!%'
    'S&)LGf&m^?pbGCAf9Q-cPd8O)nq40!?^E8TJ02wY-pNamN8yL?Z{3W720xurAxXxibq=XY)Q%fOmEu*-'
    'kcK9H_|P%?FzbYN@WENd2wXVpZ4n{`<JJ*A3ByP5DU&Z}y$v`0A^JaYyj=O68wLHNP89<8ac>*@{1lHphCRJq$c199E=o*S+`KeK?gDZ{Jc148'
    'AZ5vro>cA8%tC>P~Y3TaYPr6Nwo$~}Y97JWxs{<Fw13V#kgccxUCADEYY7~==eSz;C+7e)r#ZAKr-Tcde#S%K9DiWIbpygZSVd4`ChaRe84Puh'
    'G`(#)00m!=DBz~3UK(I4Q$+wo<i2W)XLZX{-_l5-'
    'lRglSIVYBGrH#T30ogE(Y2xxNDn(>?HoFZBLlE2teA$Rm||l9Ybm`7myO7>_#L_OP9mv;?jB*i%3mwNU6ddUG1v`5&V1^?EJ-Zb{#3CrMD0%k+'
    '0BJ2*JilzbxZ)q1j3*K%j!J(TUs{kI>Y@1g|}jf9K1aYgQ5{_#n0dU1Wgke9e3NcaG={L1L{9NURLB6*BFvQw(^QhFGKq1+*5SvGY8>3k?Pj2L'
    '5;X!SNWhW6@Xu+|*I*XWUaLNJvQ;3iI%>;WMuIeb9)_bnSyf?$&$J|%9vbWt<jakvTVJw|Ovj2n)u5am<q8y#R3j3hsNBJ%+ck(4??75Yz3uI!'
    'BHq0La)`t^gFv@7jXwJwY8z&7ZnaG?w#i4nQi74VZxcm7@Fi@#od8u!{Cx4Prz^=Nd}+s?Yu!Gmnr-Wm#L<HVIsR!E1Pn)Ze!(hfxbgBR+*WcO'
    '$N#@YC~pV_+tp5HR_6S89LtkMYx_r3MHS*4e5`+QW;3u+DPO<{n3)vG`+3A|B616cyGq7c556hd|wsKS#9GM2nR+TFEXo+AR(ydN-'
    'w`~?Pw={7FL!%suf$<Erpk1yKt?6cvjWP1*p^!1>fpj#CsDb%o?jyk+V6fny^1<~6oJq#3KIX$5~O;>4(0K39glT-vgnh|D@0_mFk4D##>+!Y}'
    'MV6LuXw3_wt)xvUlpL!5k>ZBsfX5(J{mAYfslg>&MiSEi}7fmIAf#p(2mThfaJ%n;t?FRwhw2VS}JfiPuCd?VFwds5?{c-'
    'i_q*^^#LCaGS{@uv+8%d+cteU;#vPmlwqZx*!Y^XW5t}@&xe`k}{fzDgPSJL*@*h4w2zFEZTOHn|<bV{#y&Oj+<=?k4pDMW(Y7Vq~CXeD|!pI%'
    '!X%Ow>ZyT2skq;{b@F4RU#FMDc0qAgb6Dg>w@101w)j0w=@5uN|*Kr2|=G^b9mOQc=y6aX5Po@pY&|9pFSjm1tdbhPw!aps7GG-'
    '@}(y=PbS?ow%jv&#e(&s{@0W%+#x2DTEP&t+C;?dJ7GY>Dp=I-~aZLuYv1=yv|IJwWP-*aVG6@Cl}XDH3I-r(E&r%<wX1roQn9dW&!W-'
    'SSU2&M?dK%0xWROg;i-'
    'vfXb_1cA1LM6^@W2p_#2gov>@W;4fPQ4F9WyS#p@zU$xl)#!Yn|IqI^Wq0x_CS@E;Wp>W6Ua2{rGr^@@fl_QR(&vE_CJdq9;E}9xdCq7S-'
    '|(EKU%rbdw&>DaF+|!#!(U=R6iS@S!ua!;5)`luXR!OK<iSI=mF)E*b_=&08^Ln1aBLo0lLd6aj;Hp6jTg%z5DS0C&KxA}Y|EK)A8UQgQO(d;o'
    'QKYoT?3PY8ozFnuGxm9Jm2WUl5V;yQl&M0z4~T#_m9L4a%_N`s|PO9>orT+z{QP3h5j;Z-CL6{9WIWDJInNqa>>2-'
    '$6D^R4A))jE^Of?i%XTa^llG%1A(nwFpSPa*)gDuw(dCEh2v;{%Q)hgvKc7jrcLx6(v(umtU~=|YSNBLoRL^!<}zz|SS5=m%Er)w$1!v>if5e#'
    '8^sTwSGl!sUj3d?ojGHjS>Dq#^?;_<l$#9t#kwp#61l~)R7pBF>Ny~|C)Lb&vCug?Yxl;z#z?gt5eUxM-'
    '}iGNq#kF?&8Pe(=;)trW`<vKpJj}GOSYI=cX=(&+UM!FDh0g^`<i}&ML|!)zP2yRnif2YX`dDOmi}w6czyLHudlb}_4O9LzTT=Uv0HRJjGqzfF'
    'fiRhHl}}D2B9^Tj~+ZR<3&*yB(r|JJEY~vZ4vK`<Z5I#kvCy-Epi&AdWu#erxDwN8LQCV>?&k!CpfFMtB|=Z5)FzsMWR8uEs<(eW<#VJmDvugQ'
    'C<{xaakqnIw!`|azZo0IO>9~lF>l-'
    'Ru*qo;Va(0lyry^uWQvqc}+9j54pyA{S5$36ML`e?M%E}evFcN$B=AOKmGO_in8OYtuem+yz$X`L#4*_!E`5}gLppah0Lh5Rs5j1Qec<TmcwZm'
    'mopN~we@y_OMJS^3^iNZMP!til+-qwSbnD^;bsF<HUw)1WV=&a^X|N)Gw=^t&cJ%Y8w!8Bj!QNM(lEEU6|FHCj5}xCt+m3?ohH6-'
    'eN~|h2jf;Q9jiGL;i3Q>ch0G5>SuU3*K_UA`NT@L5MqFeAyrkT&<^vNB28Cw>&Z%&!imYulWnbwT~3m%(tamst$Iyw-QVekneb8LBhP!uzPD$*'
    'x2G(;-@>;ZY;PIh3H`tS7a-'
    '>6zzCS<rjll9x{O}Fu%32{&VwKoJ%VizPJ2kaujDI$vLM(CXa*&5<;J6AXy1(KVBPH6uCTl%pLVb0*IL3iHRpx*dJeZV2j~%9Ne5QoE&T}$>Ze'
    '>B@OcNHRR#b%_vWVD)9V-'
    'Lz1iq?mF}|$Dx*C{61YiFRu&H?zgvQX+$3l|ivW%YWZY>fPnOjN+>@)giGrf_P(o8G6C5rVB??B$1dfy5#%DxbDSW!HUR;=*plC=8DIeuQ8{g-'
    'bdYO{%_K`NbDrTtO)!?$xO^~Mka(LyzB)y^vZ=_Nt{hZqnjXPUpdCs;A>u3aLoFDb2fF^L#>_uzFRE1~xN@ALpEYzpzuQqzm{KD7Cx!2};eWAq'
    'jC6)_}V`O^;y`q%Nmk0f833hWRM;pawvUq+%oe-'
    't&OE_gQ`LST5Wf@OS1V0A5WiDs;Vbc_EP1Xl31;vx{b}?ZU<AE&bwYwWCa=<3Ue4SKW1F?8VmW$VYd={yeC`i_B@)@-'
    'hly60O1K?uJF=%vg_XG=HYB4ItPkdPGiwmst3~52fkJgr`m=;0tkR_dd<Uixmw4W9hMkSe8eI6;iY5H5M;$MnK2$~+o5TUSexq_#p3DEr#DMoj'
    'm+=e|cO2>cON~nl=u>lD-vPSZAxw9u2<g$?e$|30r-'
    '&Yoe^xMSBRm+8fAv;=`*8%91at>N!Cuq=f021#>6D0p)+S82jW;@}RNCc=DiPlhNl^et~E0^~O`^r1PI4!Z78=R!<C@FiS)`6lh?%sM=^RWP^n'
    'lmHQ+)gc9j*ATl@8o2bl6%Td?KExIip_o{K>zx#z?4?1UtOJoj(=gRQgqFB!t($Xd#c5J%*zttSjX?=p5;Yh<$p1%D0;CUzpjLx3=DncX`;6zY'
    'x_??RiAAh05KV-'
    'Z95gc$c`Q8zUs+cV~#9A`9ax`lVTw%hUv5Xwbj$2RL%XyVDyOsmS*Q>md34QWzJpfEIuWMW~*x}u~FGLM*ra}qr22+shVNpuRR{=A~jlx>R8`t'
    ';=)<7GEP|R2kg5TJ%xKr>;W3cXM%8}cF_qwn2tRidH4#u<I+Hh$O2Af8vAxJeX$svTG$2QPz$3~GKq+VpHxL6HR4tY2mFYqfDB70{-'
    'G!k;&yg)Fom7v$BB(!Jmp<~>F*=yk23ClMYdSJ2R&!Hk{d2Gaji%E$bPexe)P@7f-'
    'VO6lwV1~DiI=&HJR~BJ3f8>A`UEdyGNtca~<1_#j=bo&IfH|9a|aR#__~dqiZSEKkieEe@B+DzvdrdCFU&+d%bx}h<nj_|Dv0BlpMwj@5yBE8N'
    'SCndhdM?bYEi&PX_DB#N<7ONuHq?unIKR2`2M|2A<3ElWoTyy;1K`_Zd`|am_^*1#G5R6#}sq;x@ccnp5|QBHBh{<!DZlJokGILVUO^c7NdDRf'
    'rkDjzU-4>EBGsB#*NXc8!*gNkjO>$Hew0OULwOfVY_L5aB%7o&!h@STZGox1dm&l-}8-5U3_1c83BJM{c(vpk-Hv_z?zAPPjfxU(YXgY&iW)H*'
    '}s)@z}9l?2{rtu!PJ3Ov`p0Hl1BXDFpt63I|JM?>OG$a)H02cOm_NjEdNAhjmiXX$E@VO2%J)P4kzMJ;N$P3As3y>-'
    'Af@K_ATgUg$sXDOGx`xN<F0$!srehXTjnZ}1S$vu>!y;2%o4+Hb(Hoa3;(%KM^1mt%xd*6q01k2afpR<QretQ7+wvAq@;jtO$9;{lVfT;i`H0W'
    '!<*2s@WQ%YY`7DH16UxNMZioy?MZ$P8@Ev;ORwa}a8n?|NX|GB$t!DOs{jTm{3~?ivl1Ct*5cAHgKwb=YEG2N<!C!UhwYg5ifY3t?;o&+Y^c2$'
    '(|P#NpN{gZ!fnyB&4sJ@#f`5AD+|{JIz=<{M)ih+BtIhy-!oas{L`o5AF60VTsT*^2_k(2#eVeqdOz9M8LYrk-'
    'tJ;u~{YBR(?wFXdXnrj}2(m$*Sfpj5e&bT3cuU#P^Ogq>yY=_8p;99r-6Vp)kOe~Ja-kF>R?c9V7_S~Z~FIzjb{d^~Eay5q#Nsjoh=g4xu*bvA'
    'YFY~omfeDD+wEs7P0QI&FIC`PTyL{cmgn36#iONOr0&Ect@74%RLG^pGA^)#LTn#gjfH#@4^t?f<=HYC(Y?8zzHBCBu8;tltIMY}0wmQPt%>Eg'
    'wlalRTo<yeLq>9?dgTxZ)abC1BEki&#Wo<=mv;dyw}>RFxxC95D8qv?9ao&AJ~ZaJrhGjoO+MIS-'
    '1;yMa>7QskZy7+H@d9}{X_e(J6OeU5x)M^>Gb|WUkkH##e{O%oIH(zA;BH`q2US1(%@2*N+t1ihO-z~munS&!wty$@GTRE6=i8K0Z`Azt%@M-'
    '?zyB%z3^vMi0zQSHfoQR3j@L&66fPLBG`bBK$h?S6C<IJN3^(H-ax7b5*yoG(s(qQwP(8AX8iqe*&_5pZ<nzu{afyO>UPFP-'
    'y;GTzCfAoyQT7B_^571$p_^o*nR8VC=c%U0i@Y`kMcYKC^+36Wupnl<h@n_@r?a1uKvRsq7XJUc|^|bH;I&&P$xHp{#D?oshVH*p$fd;g!frTS'
    'w8Va=ZTzdkOQgkP>ufc(ahBLD7>?WCCLibtM%{S}arDSp}b>sOBesijTjx-'
    'YC1S>LRyaj>@@6|<vMfDyLi?+|GXkntgBMA<V0KOm<pqB^Bbc6*CqzG%udLdO2P~W`R-_^LgiMZaGf_FNqcW%}1raY-'
    '__H}LciycE#QQ@mA>RsGc>baQPeE~bg1_F<GfX%`X+%27GbK{1lg@J7cWl3On#0Y57ws;Z{gYsr<?;4jT8aRajh_+}Gk0;~y8Mq5tT9Uv-KRki'
    '~{KW&t!CwNnYd+XB+MT;;1g{knzu>Aslg@el0Qm)dX%4><A?=GcK#2x_=50{c?y!nhzedu9g8L^_q+}B#k6D9WqHMPTS9AkG(6mL2zesdVUv^j'
    'K<!j#WDcoHd6K&Q1E?Y~&MB%pj{u`>ky>ZjmKl5CP2}+^qe_e|DS7X#`G1OH!d^y#-'
    'g!;#S?u(nhlt!1*`Ti>#|8jvQ6X|`EVJ^FyRdb{0gJh<Zt0hJJdJqw?3UkWE3rgv`wCCrlY3d|Di1kvOk&p2@KF#bo?v3=^aeHGq)AZ>B-'
    '&Bm9eWgY!aUfNx5Pr8y1tS0~XN4mu`Eq8hS1o1liX}nr1#X?cPh!LGl+=(vJ9x0ptkAR_OcVNG$z?t3Q7XRjTj*2k(EV=A6nQ1V8>5mEPt404B'
    'xMc}@mfjn9?uuPBFRSu9|VD14QeaJ?;6L@3v(7ob-'
    '%^Fv_g`De<w3oJDEW&OB`tXrDenfP7l@=3k$ge+vumlb7oUn5LO@G28Xw95(4F<5H8lQG?9UIja|l2uo-Pwa$(WG*+@zY@6@#Hh0i@pM9^LJX|'
    'fVNHf97A0Jb3NuCfI0O_;B5jbN3pTmrO};jI1=(@LMBSs~H;9=nBL-'
    '&UDs=}G95MQkRtdYK@=MXUHV<As1`31#t}y%ABKh}75<5rv3zUWpXQ!Zw9t(7%yNCjKtr)32}^I>rzaXT)>Rzu)$m*k8e!y`GC**$;gw=#^bD`'
    '2LpN?p3uQV@>3CfGeekQ|(imVmvA^@tKO4g!+y|srIWO<{bri(SlQ~G7)7eRsND(odf`>ql7Q2S~1D@GJ`5*DN!6;i5EhvC}Z*<6EAZJM4CENN'
    'yPNo$|XT{Q!-?pFie?S6?#jdJmY}Uon=Z6`e=n~H&RTpKQ@($`$crsO+}+B8-'
    '=P^w=J#Tsty(ElKzlb(pOTzirnq?DnEQuHVv${%+wbk^&=*+Y_(QQxXxNP`u%pJJN|3qG9AjO1v=Es^Pgoc?%S8Csu~_MR;fxla8*^d6FW|GaO'
    '~}2tVY9!Gm0DrEaT@p$DVw#{GSaA^kGoI*i%LuI^8Be==d&N4wJ9$>=NR0G$D)~FKeD3*lsDKc`8EC8gR7f1=I3MN(GHFrmm$gmo)UO5f<gus`'
    '7S<XID3AK+&3Mq{s^|Xr+;QX-uaW-^+F!?4)PTEgqKuwkUHCumb~)7R&?2vgQH$ao(H2aa@n@g55lOaYBjuK`TuB*I-qfWI^BCh_yl-'
    '`7F!3Mi)!lpENRn1!$bga%UlxMAkpd>moA}GSEcxUdu37U)?aLPQ09fPHppVL*0KJL*0I%A?zn!Ionv5p!v;P>sA@$Cdat0$u4b5D>0&!(Wd=m'
    'hq+cE^#&q009pxHi8x5#VhCDe<Qef~b0A3(5txZ6cr+Kx|4x5Hnz7|F8Lv2$))VpSO0pd>w5;?VS=WRj0(oXk#q~lBsRl?K8_hppL1Xe`VCbFQ'
    'Rg$k5-'
    '>?PqrwaIpW_!z{vm3?nzSDDNh~?8}wf>ni|JLZFLqTFB*7o~bn;vS^0p3oE4Y27>%6Ksp15`BMO?x}!8MnThh3(rfT9s|D&2vF1_W0au>d*QHV'
    '$Ucnx`rzx0>H5Ki2J@#E!*{+y7ikV_zZzvEab|Ig$63CS<kL1!CU~>a4GJEQkQ>>bJ4X-'
    '2cMXPmeKFS=|rV5jO)cEEEG<8*6&|0Fq9Dd)((xszT_y{iU;sh3~1Z<^;gO8QZrshK5bHe_00b2+WzWU{nZow)usNV`tOYYI~rkLVLe&+kGNkp'
    '@4x&d)!Vl5i&CksR$?gFju!-}oore}FVVTLPgw-Vcn#po#Qzh~h$JzTYgy+lYeg;leSMFM#fmMX9?P^GH?Mlv!}bu`MCcbt%ifKYZ2-'
    'o0np>|f>eZ3})m<o{Ef%NQ)nZ^+Em<$#lhRhyusiw0*GLopW_tf-djA4UkL`jr`Cj?P8rGNDxD59z+gQs0a~l5(@jw=m*9w`0IItFuIkA{{3&L'
    'XBYM1Sh__9ud$&uyRAd6@5-'
    'E5CDo=)T3oLajkMM74q>+MH5Cd;)wl1iB`a~!5}%$OS=(~3h%n>O_$%JlWytUqGe5hpC2n;i2?4H>gl7Y<npQ7Wu)JL{|{<*Qz&w-'
    'q~Ul%;5F)G}R(zhwCg>f4JPN?g2bP&@%U5y*bUEyOJ(z;zuj9C>_f<?oo1|I8@NnCW~l{c-'
    'i_q*^^>uo4~U8#k?)?b02&(zD)UF}*UGrs_Wmu%q{2lzlN_*^q0`;H0}07rZ4$RX{z>veZ+0<x8x(cEwe9yjP`GwxG>Q3;MOtV>7XNN<6kI@Ia'
    'Pby-'
    'K<U$xVKM0l6M04CZ(F?Iyv^#Cgsl+LSD_zQ4dX_zL8?yiFwMfua<2WgGwsoeoMl9FU3j{UvGoh}WitnDsz5b63kWuPh3I6G3FiRm8WZzWEriIF'
    'C5yJ##Wy`sU=B2a#l6QdCSy<GI6BV0g<=cv=1U{*u2Io|x{>p>b=W?=2hckH*{z0yyq+ui(?8Ttf<0FU-'
    'U)%}(nf)`%zeKuNcjcOzfwN?I4=ag|3K#dp=YQjs=4&6+C9=B~guhm`*+I7vvJ-'
    '<WJ!_B|^UFu%=3_{Cj?H|a9Gst0=63$hIn$toH~zGrhiv$od5xvqFPuk=JltIB*M`Kn3x{!PFC4e0mJO1?rlHvVB0`uJ>s(q5FxHbr4CMO}Gr1'
    'gpLlDF3iyrN<o`JLyR|1d;TDDPD>$t0;zXVy~15BB3%Rf|3vryz^jb{sIwtT|_gSdSPIgAqzS0ErjeXZtVhEG0AQ0wa8`h&S*G}H`zKdUdt@`x'
    ';NS`&Q7J&*S?v9)_=ovQh0Tfc$J0_)(mmQ2mkqR#xDj7?ecVxkly4fwc;xE)bv@K!<E{^eH~VFr9nG0E!tXhZxqkHvBumRYtFq<F!#R{=8Rco@'
    '<+v!KVD<<M{7?0xM1?{-mN`*2H=MkG9c-'
    'NC><7Sr@7SxChPgtGO<}(wVi~~`Zqof*G;!sZn~{Cr`!C7>9$r7Y*wR&;=QzAyq6Bv*h~9s?xlkjU1)VvIw_vgn>D6%vgVZD=%Y@O{Np8p*$u2'
    'oI2PhHUA<zkHr^FT*(|hSqANIPEBL?KQ3-cTAv&D{*=%vZ+Zj*#g&f6`Ix-'
    '(2{;?JMj`4cweqmm{6((a~xMgxNng|zmCAgOz8|7Y`D1=a!H71Tkpis)Roay)oCkFpd6&wo#@M4J%-'
    ')cwcwg(l1!><^t1IB%(X$2c^qV;m0W^K5n_>}HZ5}_1Pf3d`+gQ@)_wVB;LeVzbiX=h~LRE(eaq(5iY(9LTHrX~6Ql-'
    '_$UFuUTJ<<5Vl*?rZExP`NjMqh~TpKwEbP7mu1%)-WD?bmhlIl0LqTj9q;+n0Br-oARx3AY^v<ADF%%J){cD4L2ixDS@J!FPGj@#Jq&am=lID#'
    '3lnbBoenWxDtyktRS4{U?3na*;oCp6uQ#kAyNq!9{lunB)@_@DcrJK2xB^tos8s%z|hST4rPTn<k-s)B#U`m2)*wF-'
    '|1tn!68XN59RlL+6uus(+=F(es+OFrq&Up(5gyC>czkOq2aIWvEZ4HRR>Lu1H%k+%lvrXKQ(BdW=$HNK~mHiEpTA=BsWiIcLmYveT2T96L1oMx'
    'xwn|LiB>rH-N(wY!ywRZzm}Rt8F@ZSm{M;WqdaKVl<_yTjLwz1q<pIw>QZeCkx9``Fa^BfT*yK7jHoOa70^BdAO-'
    '*=LZx^@^Kb6VhR$r%<#2FK`ScU~m2$%BmB23Ktz$i4p#3&#To4Q97`SNI(0;dMWB%=geAd`Y&~8DU-'
    'qQOex<GHJRbICTrX($D1~0N%kX4PWgYDv+$1>IvKzIE1r{>?{FEEQq7dAxKC;s$6|KHY^AISc=l<SZn+{a!306k0ho-QP}p02Q@xcsZ*`|38`A'
    'ez$>e^&#{s83+H{9n8A6qgvLbSQL4u3UESV5qkmR)el`+#69i-'
    '*AZ^=WH5&F;y8Dw^hY^|Zo6!ZPEEc$C1X3c$Az1hs+cjZ5_c=SIC$5qNKDAJa*Sbr=Pg*!7$5-!#4mJz>=*|`I5@m?@1y|8xsmaN>6$-'
    '83MQ?8Nl%Es$=JUa|u<0-#?Y)Ba-'
    '1SEBZlE%t<HDR1gI9mqcXMp~TVdI9IDTGUr6xtO3ZOkw==2OPVz`uyWo@M~V`<ADA^=055tOyscV5(Z+$vj`^P%$9X{&O&!J<<)J7aAQ@Ul7L!'
    '`8d}3vv^-'
    'De;KrvzBL^_&u=|P7nox^ic|<3Ve%!w9l##>y2ia37`HGqV}dZy%Voh}N>b7fEo{~Yq4}A2$lk<Ow^68%3*Vc;dvltoLY;T+jAvjQc4)-'
    'z@2tasMx7v*wN8Q0u%PvQb}3kIoqh|jnig25AoI<`J*hP|INk`_*HXt|@?{AHf9TtjraAdCqqMZ*s+93yn+AAqyU&6T^E8<Y&kubQ*7!DRX_(H'
    'V`5eIR$IMI7x??ONO!CKl&hhh{Cq2VQ=m^`m2aV7{t<Z4caG7{>pdU&Nc;|a_0`zPlP{TFn7Hk{Lqx!|Mc*xD5BA{VvUTWf76MRA{vZzL*g$-'
    'jbL^eU@78Xx2eh)5|K)N>u`RD)yQ~KZk-'
    '`>|Qw~Z`|{r6K~_s1S_my$*5!?v{YDN2N79#a&Hq`dZVDJ+PDD8vxJOMo_Ywp^7L$iKWmDnC+5RURRgANwYGfxJSxduD(cVDLrJyLazB=ic&C<'
    'V;UbPft&GPfz!5Nu@)xiS;$0lKXgxFSKJV^l;zsmJiTX>N9d+b00r7;e<F@K@Oc-'
    '0Y);OUX1(Q(FknVC>yN#zCUgcTA+wT>0qU>HaY~XAg~uKe$HN5fXr-'
    '3RflmAD6$Skfe|{e@=Q3*vCOT9QFpNXm=$6nfQf@0D6n9QIYC`gEak1W_)B2e5A*O*tfm3SjlT?C$K!l8>$_pdw$HV9XHD(tM=?PjN-(%M-'
    'P&u^>Hk@B*Dv>=n-%va=b0ePb!XhgXzuaFp!MOnxbt43^JS-9w(I`-'
    'T@Mmn+pWP{sc(D*8=F%paO|i;fOTD~b82JgS`jl1JAXIF`=|XreXXRv6FCZ8;0Ko%66l)m%x)?ca<7RMtWWLm3-'
    'E9kn+L{;8i^Y3u90;My6Z>w(9sS$-ktw38Y^I5-'
    't2(j`V!s`fc<VhCNM!pQGjo661)`c%jY$80BqL^LYi4(Vo_&k_)U?Dt2Jol4KPv~)gKLzPtQ|plPK$u0T0bE&@0kV(*+AMQEC(%*_j=8l}vCT1'
    'W-aV0S0FeN}JD4u(aH5Ce1+fu=?A(;`kE%m;uMjzaQ~<VPmUtxLa@R@7F}Lt0l-'
    'e1arhzl{H(PG!74UcA9%|$~>Ml_78S;8vCzApN<E89G`bVQqNa)>hlu&G!mHb6YEI)-H-'
    '$u{Mj_vF?;JSL47y&!2Vr)qQ69oecocWupXhs0c(MOu~-'
    'Smb=hqD&dPRq+0c~9ibuw2Yfv}(o%itVIT)^BhRVrj!bjKn2MCP@%!lEKk=M^}{V)WPk6~c&{bx8-'
    'sBUTi^bhLB1J=#vCxL(zEa!9A0Z0oQP{Dm*I9?Fi7Ad%R?l7Zta=-'
    'LGJ)&k1!f~>6VKHz0)sAjf7&%sMPK{dKctOg+;bHu6<Eh{dHVE#p&Li6PHiBGJ1}ByPn9}#`?K#4e){N^~G$LyMxQ8qk*x92PeB`?4_|G=7SX5'
    '<zAMJ_8$bi)DIej7?-O<Jz9qwm^(vvo#38UA`2UYk`U(EjG7(c+m7=MMmb7VA+pJhhUrhDu|j{|9Z-'
    'Absgp{!+5Tg6L6W7gE4U!s+YOQw7a9J?2Nq1J*xZGd~Em@1pi9cNel5Afai;{1JF_qD*A#XFa*U8qr^)0aERi}1t~ji+47NqNT{No^4|buz1rh'
    '{J?@WUg^fh|0{!OqX{S3gQ!E#wW%61;I!D6h`@$JpsDeVIbAxRfdKq=j!}i<zKnMb2u`0B|g;Ea+1j~eq*)<qhYQOCj$vQ+YzMnQ!O*L8*sq$2'
    'Lt&iml<xHy&5@K8s;Htv7=7cBu+Qm;sTIxE0N;5;vnW_fAk?^jIYm9%lsd$hvXWszrX<O-'
    '`DCko2k|PTkCR@ODm7SmR2)BhVQNGJUF2_6W%?%{uci0=v`TdIoZGj|LuRE1@E9?YuK|{9n>l4PQSuAa|`+(y4?UqU`!bl^ojUJBR~0xcunX8f'
    'JrTJvximE_wuWxD}+;frP?RvKd=Lv3-'
    'v%#RgXS)JSS=raMVX|lA~oG<w>WcXYfVKrNXxK#1Uk#xDe63k5f;MUOU01dTrE6tDQRdtpV7;EbL!Lady+unFh7Qpm}XSk_(&Ti|0a$nlx*i{*'
    '}it|HTRK&p`~}?W2HGH`p@)tnP<ulsBV?04w_Uk^V(*$8c^<#BX%;V^6dv?*LwWi`kk^C3^QQI9qKrDnR|---'
    '?H1o$5HsBe8`tM1UYDFI(`Dk99+>7=E?liEd_sVp7?3jK>g=*^Cr`5xLGm6vm~Fismr#&z-Qp+T>b&ai-yYw56iO12%#);+#Iys9OTKgfT4u18'
    '}@is&ED>Nsw>6vV!Q<rXc1I#F6^eGUh}{{O^24zLm6fqY#?5`F`BHzC1MtdI3}wUaxcZw%58eHv^3a_~?OU6`064c38=BA5TT1n(mOHHi-rmwf'
    '*EU^5W=ATjbY6*oeDaVsGYB!-'
    '@)Qw+`bkwvvvwDElzjCR2OWTRxyymi;#J5gGPvsw3~m?qlw)pa;e&UV}*12#3eDGNBwQw(r!LIUv55UWg`XuQlpi^+2;lmSqp$UK_7oy+Vbq1N'
    'h^kc+2HTnI8HTr&~2)!%FWFhqMuKF}G&y^E+#Sd4y)TfyX`4cqrGxZUalWN-;^khn|8CY<0g46Me8;2B0TFYSuZe>c((1K(+N9t4-'
    'H6TkTHoV*Gb=a0M(K&#sol4TD&{sfwL6K<!vn=IxbG(@=$D7h2?<+TmAK0ce{pyOI!j1jOai=|vR6Aj7;}hQ`A(2<di;UrZT2e`k01{f@d@l+&'
    '`DoKfbrOP;9R_<|}<@UFe%>qJ*yc!67!I#mc9jIk+-'
    '0jrb~Bn5V@xx}vBQ|4G)_+OL@N{{cRzXVwG(pa4w8m@g88uoN%9~rlni+(J$>+li_eih&>4-A9PEOj=!rLt}V-'
    '(7|_w1Pt%G<x_icNAys61GXm-'
    '_0)cMetO~y`j4A(|hE6G;Vb}7rof|S9VWSWy$DpQDE*NL%v{qDK;7zzMc?bEO0>T#K)H89EwR!zlXWCuvN4r8B9s$c4Mz3cgo*l-'
    'b%iFyLi8R96N<+Nol9U>W4;izA}P)2bQ0B0GCw&LtgRSsl3WBcgQqae75P=J8QAMAlEthK?AZk@P`@D8sy2$eVpI#<ZC$3GChB3r69hCljsqBc'
    '^H3`zTJ&KM!e$$OtAemx+5H!??=E#-K)WP_@>kQ03u(4ad0Ske%n5mYI7Ti`8_|+zzpY~zK>HJ;sMQsCx)Rou%o8-'
    'owamBy42s1g9})_9@6V@aVQdC8Q6DAHwK4kT0{ddwZXPrT5hzR<0_mICnb-?^%$J??9jD>dvdNfBKFP%D^|Azbcvk-XfpzzRA-'
    'ChxQ%V-uS!8e?1H$F#}Co&%hFUToB@I<tM`n<&cCKrKb_u}kRSO9pH8$?S@l>0*PpYECzI-FXX2V!wsdN?!Wa62PoTL9om6&K@jVa1myZB*Y+n'
    'spz40ZL>CXQBT;nxocu*XWKbb7&4%f0!_}<&@bQ^RrIBXZTg?F*?5sqj3jtuJ3q7<`pD+q0uuA7dHJ0Oz$?ZTeMeF7>UXlyYaW0){)LgN>mU~~'
    'm#A8vKcqjd7F>MTZ*1(9Z}0ODm|Fj_Ln+bzuh({UP?b91xUoD;dy`0VB56MIrqeAc>JoSrU07xSoMgyK11HqI^knR!Q6g4JTP>z00&>{i}EdcZ'
    '+{)01TS6pSzKR#9BOVx{VvHbf}Isq2KNPDoZNC!T~Z$8*JG!6DBYqPen)iuO?$INpnr<KGK|giTA`qN$S4ZA^6#x*yT8INtic`+e=WsPRBF9+Y'
    'S-+K%3smu89fWM&PQcX!T8bba19{5}p03!_%p>Ep{AIZzCaaULb+1Qad)a(4xCg~hb9E8`vG7jei({&Z9sJm0V!_W`ID#rp;K6pL=-'
    'houX<b(^mzXf&XQxl1Jqkzoe*8Y>nWsT?hk0(4)Es}mW0q%?XMRuF_f{KIkFspfpqMD8ap)vH{~7sG4Tm;qP^!d8qRC=I-'
    'E@GYUU!!^pkvq9i5UMbMaT(@wB!^5l9>0X-Tc}?H;mJ+dA6uCM{tj7`$De^wsmd-'
    'X2)hEcxW>jMU&|}4~YN*xY#EmNHZsEOILv5dFUMj7c$*_Wy-'
    'I>5CL%1Y7GXon8?&pJOryH(yi&17gc8H`Gpu7TEgxh)QFT)(~O5_$VyH2twreyL>b`ElP{1A@aZk`SBlmQ3K6!;xSguxnOz~(m_Fv$l8xnq`&P'
    'RSTeja5miz)NK-bZs=+J9n+mAOO(&SzMn2Lm7M5-'
    'EOkt1LxubEuf+}I#I<@G$g3o)n0AmlLBS;>WgP&17Jk1r3B)WAGMWv(Dqep$snRs<+$Zdk=Ck?g^B@o3EqRKJAU@8qWDIFjYpkPH&T)NpC0JyN'
    'Rr-_OihIhDagZ5aQ+4B!ItyLsF33{H*11cqNG&VQg~Jp_%l(0=Q?yiv3~3?{D*lMy)&R=CAx}D>>ApabhA=hbJYg0UGU13p*etkWVuLUojqTbA'
    'wKk@`BVLC<{nD<<0Hlcz4;JMD?EXjZ_~!B`IhU<y!TgkcYz&lDc8IV^qW2yVEfIrxeGVhkPdDIVuV$a3{OP26^7R2)82+rj-bkDzt|++ZTrsl0'
    '(;Yl$6zJQ_x3U|Z&t^AIB$iYU`6*1pNKaVDM&&s#V2cF4W#)7STm^Q*kmoVZF}0>JlYIuHjh*v#(duw;4#qIhyH=adHp27J@}{lnL$;_T&(((9'
    '6XWNEIKAJtKND-JOg5jmuX_kXkt30!NwVCBDfT}`xI2uF#l#fB(W5JjkmVV3jDHnDVB>ajKRnlm|e3q=tU1*zTDdj8{g}Gv4WjvRdxHp)n$J)<'
    '}l;a6+P4JXx$fPy`s`b4?#%5F=lqiE`|Iro-rrA08}-?o;C@04aL~eOXSXHu0muuwbe$l8W_71L%>%g0xjv)VN*VPW1hVociv?@azRy|m5D`-'
    'r}Np2aMfj#&?)^y8PsMk{V5f$6N(bweWWiDbrNaEU`FWCWa=1^;9br`g>-'
    'Y$nkDl)n;r6>D<lb(8dm)#Vw7F=`<QQJ*MjUEcx#${WAvsoH2PP=4#u_|Nzb>U$Ee<&vv{B<$WCC~+jLorb=u;`B;w`(!~5yl5uq&TA^`gFi{0'
    'hixP3J6A=a_s*`MtNs{(>enR9qYvSKjdRi-peG7{S@x&W<`rf(8p`hmt*jp?gw6JfE*yM_EO+l&qd)h#gs-'
    '=JZP&O75d|HyW#h>dX`fYy!`+U{fCzAb4ksxzy}K4tRHQe?-ANTyMygFE>Cn8oPOaDNHn*Ga+)jA=$J#|z|(e#=D<(&M%@hkl<iQ-WucFPN?NW'
    'EnEQGQV`Dqk8Ar+IBBf6DwRLX6X=FAaWy?5k3_==ipO_-'
    'E1B#VSA%>!=SuVhM{VO7%;C1JFim3C$`)xU7n`R^9tS57I=lu8XH?;dyJEqU_{JB+-uMssOw-'
    'r5<fXPY43rVfo<7k1~I!K3UK;f^z05e`;q9pV|0MO_b?cSXZwMDA4EHgZ7YJmWM(|yT|3pbGOmZ1kGObc%N(DMbg!v6tB%%iF{M_%5}wziPPa4'
    'qkjVYn@t6<g+`{tqk8$y5^q_UTAwGP-'
    'z(Ce&1e$JEedvnwU|x)hp?V2dh16TRxK)YGIR0pTkKP&tFA$9z5|3+v0ZXS+clDKH8GSJQ>WZ!=5s$X{9{2KNw6T|9NQh`N-'
    '6q@slMD46Ee3I`>VOIbc5-'
    'y?2dJ=TY3Y@5kk0mWwz5n<l|^h7Zp{?U8xRh<k}?Sup6TvX)0=Rpn1@wVvzDKrX87(CWwXCal+FHw5{$<?0a4@TA{bk>wNi#FHfS~eQBK(^45U'
    'Av|H(m5&EflJV4;k1C+of_tfpBzH<B6{$zo>ef_@f7&7nbb$dtL}HolRiTwNG*!__*=1tTu>my>%tGJnX5s-'
    'tzs<6b1;&bldvonhT!N)y0&j)0vo4!lKOPIFa=ca%lPV3tX`!CTT4cBmX7|7W0`a@v&hYCiogl(SmJms4b4R5GRhIGR4S9P8Q^M5#f4A0wc$A)'
    '7J-s++=V8UkxBRZ5dz8%|P}UjvY;&6feN34Q)a{8kabCY9+ww?eXB74&QsH-2`LT@_#g8-E580YjXJyh4Cf3cz3@pj@TO&1gUsSZ9-'
    'J^q*gsEzc~!n>M@owcM~i%aTGf3{M}4(pydx|5I9%0qvwUoiZ@zAX`O3k**VjY8_2Z4E{Ub>9J3gUO@cOkrS8vD3I@mi;P#_vBn)kkW%}r5R{}'
    'JNnJ59STw1v9|UB12x+lEAvYtxEP8l8V;(%ZC!JfK?Hbl1{NgV@fs(%Pm$Q4GAvMa#%QNHb6eLWM@zY;FeU<C4%gr^}V$y3LKk{G|b=O-'
    '32}IU1e3!cnntdbpmgp`|BCAaTcO~abesChajl6Rvc%v#ba+NZyyz9pHWZ_k_lD|er#C-'
    'lKfSAWpfs~mBD+b|}T<|fX$c^S^pO+7b`%wu49UY}YBSE6QJcj<=4mHNWPFylts=^pxZN7|OQyDR?Mk0<e{Y$5<`yMS!ZHG%>)UBeo0wTdl#<='
    'v0W?cBbbxXeGtZw}0wjE5s_GQlo;#Q0~pxJ0)IdGK8xXMs8KkMtYC@ZpNu@+$`^6DKaQ?YSWf^11GsCiUK(PWpsqq4+K_S`?JxDH7G2S=rsDB1'
    'P!sLbl=dcHU+E<7R!&BqMQSL&yqG86ak1xiMFuj<j$!uYsIo9y3llO0o^WSH#V$tHWeuLN}YNKff00gIcz^GA_RlDrxxbNmX-'
    '+76~<!H1YVCF?~xIxK#J$il6zM#+d{`9b=MXQ!dqMtVW63ulaB6#Jrun7bPB=ep@yZh1)OLS%2>S7IUuwVcqUO%L)lo5f%|rx=W05PS>H%6Z+D'
    'pG&0EW+`{@xf`ZMt>sdo(=N!XBNKnc0%apcqAGqlF|smp2Zy=r{Pf+^Y1a}%t~7DVnaeASUM0gJmXc$?v8nThr;j|pMc(G%58rb+kpqWC%Zvnl'
    'I&oU3%$WofV)%>X@O<=}9gntyB0TabB_B2a9tk#$=PyU!YCQ4UBQ_(EnVgQSS}HOrh_(F)tLaSot~IgmeS9j3)WH`wW6I<yPU)O>Lpzkd2K#0U'
    '^E@KvJqwO!J4yw)4yXnPb?F3?Bp^mCHVE6y%AL<s{O!~PR`CK@9SazFv?xh`ymY^lJtuPo#`jeEC6Gk%z7WOl*)&QNM*Q)?W<?Je5L72z*Pm?d'
    '$ypynJAXpi+47oV`U(Z&mO4N!kpmrgYWuYWo00_ghvr$r0Q@!idic_sqsZjNs{dtay>X_tzYMohh*FjrWsqdm)+#InG)|3B)8=Q!>9u`3pd<Ve'
    's|Q?tA+K8c8b;%36ezQb9NKcVJa{@y!`CMY5skm9Z1Dzhv8O}-!KU#0R%je)TeQLte=m~*c}+ZkQF3sAU)Awdccz|ufKZp_sC#ubK5vc8^Xu-'
    '|?2*3$l-dkxbL^F|&tWs)EnU-'
    '_;0s}UQ4NXjA|x>SxpirxUfm{LtnEyJ9nN6ZctBj7wooJl+1EDflJ@F0M2SD`py;34N!s=o{;hTEJ`#;9I*fJnN(`sn4o?tjIHa`4&fz#pi<Q)'
    '`x-FWig=L+P-'
    '{OeBG%v3dm2p4uTvL0DD<@NSHd5uxZlgy6PxK*cqp3%*#wpqa+!;1eogW52R+T*ZnJIVc9MlKVn=!1&!6to>rcC;@!J`UJf%!6&T)nKS(n+3fC'
    ')g>rsa%cZ6@bi(i}9P*=<E$E7gd-!kzrIfO6N+fM6A8K!KW+}h$S@A9Y7n>05L^U$hM8}asaJa#=-'
    'o+4q#K<Fgx&HD#J80J^SI2N;_)O$386G(CM_9PJfAiQ096V6pqsWASy7CXcE|<eCj&hr#>|dK5`H@J8_F2c)nVxkTZ8DWONl1D@s4B?=5YFOm$'
    '2~|AJN-XW4EA*LzKvY97Wz>$80d%GjqSFvRw2Mxcwb7;Ag?WQ?QL<U_&{M@LfRgaHjVM*ll;VxgHI;a$T<N;*w^$_1Qjf+8L++%q36n?#09282'
    '*aCbwWEm^Ep&_|NQ?JGCG52k?frgscuAVB<9_F{XU?^NI1!91J^GJ#=}Tk1qzM*{kW%Pfr&nq?^fLX#P=?FfYwPtJ|(J17%4xmQnJyV{69Es>i'
    'u~?pm_|n2N`XU?>qBtE6W2TZ0k0FA>|>C2-'
    '@8!>zWGcTtn&f|9ZGOe2l#lq7Pq{c_C?R1H2wrLVcPQZiF&yv{70|F?GvM`Z)nbL>9FpIqFRihNs(PXVt?P~=n+*Ip^_>T!wO$+5q)Fu$>i9B;'
    'pRvPbiG@@AHxBD*Bad*u8Cp;YG5Gq61J`z0-'
    'F#aaPGe{o!QWPP$*UEiCHoCiBTKw`mnhczvy!M!s_Id_l^t#u2>*T^SxxfoDmHy<woGxSA%$vjZ|yTwyP+ghDr6{`FW4o-'
    'T7ooo3hSIvJscY$8h(4Hh~xgk;u(YGf{*Rd8b;hr<GNy|S@`x~-+2skPo8+aULI-'
    'aOSIV2Lcd>O9`W!Z%@0}P~EmRCz8<;4SbZx2gY!GDZ6L$3)Ym6_#aidYus-nT=`y<IM5XRtcu9aRd9H-'
    '3mwlHM#R^n;{8TurA41;d?AAJ6>d+_j5T{F2?jweO+i)*D7?AW}gn^!ppzopwU|L5>@s9|q3tE%NBni+ujhU17*_c6zRK)(P2Z-'
    '?i`1mA`!OSk5&WlZ@Y3M>=)0dglHZ<+7pNGicUpqJ`qfk(iKc#Ez^LJfd5gGVvptl`DuLVHMqwL|sgaS-'
    '55efhD<1S`br`x8emcCHV|d5LS}QFS@=j6MgmUl-2vyw+d)cn5O8wjq8OS%ZhWU5H-'
    'xB4)VV<GB4q1>|9*7#;4{0n8q9r%vReR$d7wE0eO9xB^O_xl*l~!EseRFUbKToA5k!SdMQ^>C5q_+OqG+R=X-'
    'Wx65sh_glNIQx>5%6nDLK^kZyf3Id=FYOUbEm)S}qL4<t01_!Pfo<@b1FcH3hl&<$3gc&Rh9G}+Ze=|P6o3o74vSX9xj;2>7<O&`TcgrgHVvbA'
    ';#>fp&@x@e<T*qDnLtmOKB3YV3rCe+A{x{y#xdd}%JmT;XnQz@Uz-IX&+21TsBudsFzQz^{NIcqnMvo^$0gU;#cRgZ;eYnUqQZVAsTx;mK#A-'
    '!9`CM4@vB?SCae2R)kdQyfa0N_on#Wc>EKf#svc$Oo2%{x7c(k7Yc&A-'
    'K=r^a)h4(T(@>a=@p!Y^Q~uwOiTX5lY#g&vTVB9VW9p2$0Ah3T<aDJ~;$eXN%i@M0U!sp1A805%5#av!7o{a@}K(5F7x_B;@dbSjS)7)y_(k(w'
    'ITWZ?$^&rfsRVaaZGva1xZTd}tP#S`TTex+JQUw_>_`1<ScO$(L^J|BMlzIIII+1#aF1nqjBg7rdz^^#z*_tW;Y2w2Zvh6~G0L2O76n_s1Z3O|'
    'Ocke*sRdvdn8&by(e=1S+CK`*jkO#}SnUzQf?|8<`4ilKcZ_t<M-2^C}!u=clL(wMs+zWU;0Zm=z+DSXq|-'
    'rFTsq6zaldaBh9WFphG^?uwp2c)CMNJfHy<}Vcjn?G*RE>V_<mOx$u^<3v8?N$ekyoA7IX3-'
    'm_C4lkO&rm+ZmM2VA+Zj}%@A~6tQP1$kV%%$ut_LP7)-_DES8s@OE?%+BCciC46t3rVBe-U7B3JUv+9+k#pVvBgA!mIvl-4B{<H-'
    'U?#~MVBtLmh9t@Cbdz8k-'
    '5!TB(h_5P;|qm<{Ku)M%<060$;7w7{ca@Vxg%(L|yMu9p%J988luT~sAnZESr2Qgr)9O|+DmzaV$#<S}EFlC6^o{Qt*JgX#+)VM7gw@WlW6OGS'
    'GG(HuLPfIjziN>uGjfbM~@Ove#2a0KN*@>UgXMd2o*OVuJoZglIp>ZICXy$@A(}QRpDj;6vfjHHH0KVVb&Fj_5>ea~WHO#(nmpLdy&rG^zlnYG'
    'YSzavZO+OK0+T4{ik_T&*-'
    '@u|Q?RhPxEFHS8N$EId$&E<ra{~7|C9WC2>E{|ZQ75IcnFLjuY&nS3ffRlXG?_9STx;|;Kj=ODM3od?q@gKP<lx%oc`i8ULv>_clpuAH{T2`t#'
    'XQxu9(@XedKSe2CKg51b)pc#n6mQMGKu8xmC4o$`5PVFdLF-'
    '@v)_vNx2P3ID684pd@SR)4imq~V!IUBQmog=W4#o}Qta2<H2ZblneQ@LP^M>^(e%HirkCLb%9E#Mygp@BB|MArm9m=t#b4>L1}rXesMD|z-'
    '2S@P(IvemQjVYmPQ|X1l-FNggLU?w;uj;P9`=iNN-(FrqCY~EvfUhD(LM?0v{M=d0QVw*rr9n4XxmfTdV3q&dJ^fQeW&-'
    '8<}A^lZkt4hKx&&bf0u2-QeaisCs`L<n+ijISt0JNXr^&;E-'
    '4HQO(%ObANdjPA_aI^?>2@#0EApK@WoTZ!uILvqFEwVP8;2|tC&KFF^hKpnH*#k=N@yfN)B|C!vfnFqBOBbShOzqIODG_#S?)j@Z)A@w(!4%_X'
    'Ajgn~%~+KN*c1V>_ajhRajK?p9n06+rHK9R6|Z@gjFCNd?r>5gGV3Ug@<!eD=4Ls7v*yM)pt5?4R~($IqUeTPu+rq{lL7we8Sy+~8_)W&snq6m'
    'U|U4Iq(I>m)O$*4oLuG#On5T{y})kg8_mDg!#Q^pFES7SiOVrmKye5vL;a*6$RkqUYFhsZMkZT`uE^j^E2=Jkf23g0Pe)XQHdPS8~E!exIaxrF'
    'W(HA2CbgM*l{O@1+s}ez{<(?wc|>2w(hLN;jAiKAfDTvN68=c1d>R9f$A1#FQkj%6y*E+G0;QUF-'
    'H2_MNlJjTEL2<uuL*j?^!uHBXYM*@`Dy%+{qjj9onQ`8&&9Zg`BoP;fC_2Gx$Dr(8HYWLDf757HKhPWuPWb*Ye$`5YjeS?*+sqxSn4BXjC|%Ye'
    'GnW8m{SeT_*r;w8*U&BB6(l9Z;q8Nn0uD=Xa|fi!+J8i!OsJeiBAg1Rm+mS|Br_@vY@U<l9Wr9qa>tFcaQ4Si@=)wCMY%*sJ2H1Ua<`+e1;#&6'
    'ky1<sh$u@CzErM2qM=>^J>v3D}Lw;e2qe1eJM;X~u()^b+xVfW-'
    '8_QIO_5g?(dWI@}?Vublz`(U4|8ipYW9Nb;~KIIuXU%KwG5S%y*!qhOfUmK@`R`2Xe1=P$0bZJkI4H*#4lmNBhj4`_jNR3QLUH^*;iAY6|x-'
    'G!zZ><Q@)V{NpZg`XdiQZ`+OOP0?5z;$zaA|hmTxkvw?E|a5x;#cIsw?%tYESV+WaS>K<cZwRO&OJt%W~&EGT<^~(Qc_^iONuE>BpZAcy?Pnk}'
    'Dzkvgj<cW;sH$GSgpt9NiAGh+VFTZ3O0bpm>&MK?PhvwGd@jx5TliXc*e4N`5HD+LdZC{+gBec3@A!66Ii(yrp&HfEVI@RW~T%PW(cCuW8J27W'
    '{#{nADc;kfq`n)c9vOV9I3p7~O*g#FnX|EnD`uowFLcIY;4MB4JNf+;Jk~$T~%MS;Qm~JK+@*q_#Mt#MF*hCyU^57bOJj4<)+5>0cq;UzFIoRO'
    '^IUH-C&1><{vSB_}WE!YecZixb=`Wc{cA=b!$cf304MCvJh#PMyuVGBU8{{)D0HhjK2<2l9C-'
    'x&}7M@umrLzQBd193R<zRDYQmUgs0Y)O;%4&6V+9w9Vn!pwq`H+hvm!bE2Df7%wi7ovtG>M-'
    'M;7m3GXr0H)qyy|gMRyk=tUB=^*}CW1aSeoO>i4*XIJn4KqO(HA-FmFik@6`wqzaXKEp!9s?uk$G_i0;dBih`v0Pco=*p)wMyBJ-'
    '(_CzpzD1=q%Zq{)2iyQ^ZJ|P2`Qsy-z6~sdnA-'
    'J29?`RH`tX7`Vtr)fBQwbzP@wT+#8C2%{5YHol4HRX}fU(C7NB#Cds=vlX*>CCV_v$VIDuc#z0Gos|Ms@&e}^8=DpgISyZGR(ek_pIWu#?A2jc'
    'b{h-'
    'hyD#AV8+7hAzL9fR^6j>*#V6ysb7Xk_XP@zA0NV?zf!Ys7zt7#KX|L(#oLpLOV)p)PCj3$B`Wz$n%hWYM7QqRIr@i3afa8)O9yc!?b<V5|MT70'
    'ALwr=t%iM^E=VDLNVG#E|yXt@V1#{+}zfT_!!!OpHkfmuSt^yl%L;kb*=RYa(=-ki|I;I8rKoeA7A6zpDt`J_c6ngtFOQP2-'
    'g<b?M%WD%OknP!#7$_q_#wD#H9JJx7eeN%2ei+)`x7~f4QTL0J=jrFxOsJBnl4~H=M48FdV}~^hi3I{)vbbMfTPz=jNu&myk;zM;C2-'
    '}&Jjd2+Ef&@zN)ZNv{_GSM*@}i!dQs&vY3x)+e|hMwAM)yVW{n_+VN^jZK@;t{GK|)cl?kO3OexaTdBV=9mZ+fBTGLTVl186Xi-u|a<-'
    '&D*D23BNYj{iV`1}5+|M!3X_X8Hjm{?0Ve2rVnbq&x(=qcSY;1dcAKHN?wr*fhJr;a;q$}+k>>lWJ63KQ!%DN<Ur3+2?A-JG$ytQ6hw-tm9|LA'
    '!Eo&W8yalDc99KybsqqXY|-%>l&Wwnv#RsY3f!&)-'
    '?CRv?BSFtr>$Ji?|68)OiM|H`=<Kq9Zez+lreoWPjS#h^VkFy}v&ddGT_f)C~>&0vk3(6Cq$$w#B{a%X36kLO&_P%bqq61#lLe7gnggOIahnG_'
    ')2;N)l?GFvHk>+6PM(a~(ZB>U!iKGl<)rQg%|;mXe~PsC-8%XThib{-'
    ';O6LI&fk?|v2D25&D5#0M<IHY_pp%c)k^aP@)I3cGq@W_>CW8P>F6M*<0Cfe}ABg0<70f~%76flOS@e}cwN6A27Pow8&I|v_LTL8KMGXt}bECS'
    '<pxd_4?V!z-4x4&RQHj7)^1umZW9*nRAN#Oea9LCy-mtLAO%toSF!XU>V%&nn09=_@HJ}9PzwFm_Pa0<*<#eoJ}=@;*%S6^BFXCm1`+3v4T^z1'
    '4;*^DO`Gn^Rt$CL&>51C{DwqMHv{yT}P@-'
    '~aV)#L^N<pL>b+=1={|6sP4UE|BW%~FFPN3c}oh6@rtFo1z9gK?oqL$i}u6Lti7&chZ%GGS|J)rG8eM2K734J2tm0eS2rlF$V~^CnNwp#1M$ce'
    '~G`90v%Z_~1$77ac{lLMfx~_z{OrX%NvfMb_@hdbqT}kX><-'
    'iV6mb#uNRNR6OYWv(vFmWhAWWO`OHVwety#nTL=o{KYMt8Os0;mfJ@zAN~?Z&;{6FECBB)thz$`ZRmJg%0e}6;A9X!0P)KsHa+u$5=})o@=qs5'
    'qbaX>;`i4^^FT@xP>%7cQnc+@GvBk^aumJumy2z-<)$ENAH4}_QBw{Cg*Lvx5hQ1|pAkpHCO`B}=45|1_LEyZ(FCv0a-Ehs0V7odNGvQ+{~-'
    'MXEaNu)pz3CEx7QeFqt=P4v@S_i41@vKN^<+N<Xel*bS2bnLG!whCu&rZvYhEM<i|zle5B=L9!EJB2I7ziSrI_#aQMXu?h$2mWNo%-'
    'sn@0BIU_JVKe=$|>bgriD6Pt+VAf*+FJ4{ZVJzIvXC~%c9=|Ww>_gn_fIihyo3`)})yPWSff}EfV%srRV0o~7P>XJz8F4}#3#{8V1$izX=&OMC'
    'A~s?Q4t}?jTDmxs3H=%EJ9!uQ*24}KYVQH$pXi}=GA9TFbyA}9fim5A!_zCh)DKO1r2*V5kyvngmVB7NWU<0L%IYF9rxgV!#`a!QD+^8x-'
    '4C*WNfv6zkxOOp6z7nl3a)uP$NN{}!}v?RIhZAd`j#V0A;ljOvx9aU4M(lPxZmmwcmhJbepyBeMk0{JdObqsxHN=#Q8=jR3tY&0@@KFx%1lW}1'
    'ziMHj>4Y`rHc3agysS}nlRz12J!S|3U9CjEM$E_%{DT(ZO%HzPXbnSEYD%_3@ZeY0sl;_DH`O*@y|?nOsvI%j%;Y_1L*xbamL3&<forB5ndm6Z'
    'zNF=^L<9sXycbyGvYcO9Oe0uz5(hB$|<gIR-J9t%lcBAb3|jJxM&UEN-noj0Yw?lGmG?&Ot-'
    '7vzBpm_MaJ&Tvqp6@{Z5){hS!rOTLET)qq8*4zpm$e&M~C4K0Qf+%5ah7h;ZjdtAR4YN~#2%<ONPAm0fifnnnSsY56nlsMfTXLVhdHx}00Oz>k'
    't(d$ylMc9FtOQ;T)4fh|(X+A9n6WXYQ}TUhgZXA(RY8D@paGvZLun?PkSwrY{<^B44o&KLf4IkCyZNwOVpmmX{{G+ZAwgh#^x{oS^v=xxO>ge#'
    'R9QUcb(UxtoHU~Kmei~@UNA-3Y>BHz{bR$zF(Fv8e>7UcD|W2t^2+{YM>L)1Nm-'
    '8tK8^*Wd1QR`xSan)^;JRDM*bzZnF!SG$*nqmdFg&hDb7{KAZZHLzZOyP}f&9@Yu`hi#PLQ3_W3FU|Qs2S4OHt1W<*!1P-'
    'CITgK9%8`8?Xy+M8IU!2;-Ft6R>6Y`6l-'
    '!!1;!UAyf=gg@E8{T!2<gR))5cl07Q?A&c^hi{;ceg7`;CTg^**tNTwF39d)cY6bJhW2q}S`_5fCrx?<av(F8J1<`b;qn7)(3a&H*!m#ELj1I&'
    'xUkW!K7QA`q6LWyI1hc*>}jmF9eq}E0?B_MsawV>cP9^EE>E;Z2E6<DUjk!B<*nD}V}X51I4fQv46v#!h1--D*jYWBg@_^xAz@!A(=Cpi~p#W%'
    '+4RnaVQRV1hoh^+j|+pE&oaWY49!Q}@Sb6~k-'
    '93Y*i<ltG+zmIhz>tb5#$|>~LXWhbz(sg?0IKxYpA@l{TYw!B<)Etbj&M6KZ7j&q15b$HON6DOKL`upC#30>>-'
    '*q=)Sx^Gb`XcUk<b#IOk6LihAlNlXCax&()gsz{jl+bK7ruXl?_YBIXxBM$IWDgD(sE1@FD24ml}$vzGc~a{%5<}q+&&pBM;q|+!*FB{KENr_+'
    '-31I>CLLj6AcZt`@50Y02%I*4CF{jp-fTuYdk@oJ_@gF%Hka9Jo(^I*Dh?<$Sl&n?mQYekHgG)AR!ald9^i=@0v@8q_4fq>Ig{rK8x`OCTp=SV'
    '1Qqkz45Dxgp4Q`+6xOCU=qAMvNels>eNx4tflH~Bvpu7o89;k|Iv5jNmMUI^+&3%4cKKwP$@5fvQJJmu?Gt-(PXwtJVk|J<L9j^^9n!-'
    '#*~)3{h`;o?3^Xfg!C}Ph#p9EBnH|k%v!-?LaE(r{MEpjc6wavGLGo)tLxFQ(-'
    'x}Oak|(ao5k6^J^92#m80oUgivZubiNY~tUAZ(a&`nZ8aJlU5AUFB9t=0UwhqWvn=;63G_d1@;RW4TSrb@rwU~lrHRterNNoP{0AG6pN5j%%m?'
    'H=b2R)T}GVckyTn{^Am+Q8aRwqrXjvLrm-'
    '*!LbER05{0II1^aiRxF>20&#nx@`2ti67^RZE%)Nl~bi2Spk0))Rcsie*W>px;1t6w8dvc`L$W^U~w%liv?jIN0~g>2KfUabTf5e07*{>hG^11'
    'fRacvo}IzbiZakd5F;rN<Dkf+K7$vMxqp~uahXkY}5|ZTw|DK<}i_O7Yy>~rn9mA+5$5bY(3d(i@%K;Hnk0#azg|xTx^LkRKqhdRN5*Pu(P{0H'
    'Ql7~m1&&XGsp8-'
    'TL1X!S!rSd>85Jvi!#AH5KS!zC0YfYtgw0)cPrQ!B91F9*6S=U1QUHvw`&y_pMV<gU6F<=8Fe9iRvt$b5UWZ4v|Tj=f_g|~iJ~`_H+601YX+0e'
    'a&bO=XR@W<Am{#X7NHaXA^YJ%@IU_f@pRn38g}qy$M~w>2cg{?Q5yQ2lF*YjWwUC(xihUQH5vU9vl2mzMf(0GNc!!``V`XUkXI$KR<HYZ6jKOx'
    'X?bu!FUHY*5I*$0Wd2xueK)>r_29rBj9Yahi<q^4O~i~p37H{+2qhVTw^_&9L^P@UBurw77h`nld(lt$h>QDlP+71S0ftqOFEBMjL-Neg<xE|j'
    'N<B>#)!RlzkC%b1dZb4_7rwe7GuP_48hz49E?nyo2yq4)&xZY%-'
    '{m_nu?Z_1k0|u~#e?N?MDmS^nm(HZLV?cX(?_i3prawE@n<3f4tuGa`_Q}+ykE@L+q}@w`20#9v`fsKx+%J=5etb65Ix(~jeUH~yDz<suNGjC{'
    'z1AOOpz_WPgA~8Ot;a6-'
    '*G}__94A&;rQ_Pqf}RbIJ6T)>(cYXbJv;A?P+?cCI7HyfP3txC}IjP<@DgXS*h5*<b3mky`QS45p`x<WS(17d&i<GyK%5e9P9}SLZcw=8^+8aw'
    'cKu3_B~2+N&c2ip5xy3p+y{}A?~&kKoxn7f=Jq?_?T^h425C0V7GgqhEjA1Po1U=$40VSccHy#+khW-XMziCf8H_R;T*>8GK7zCAbG~EZBSyD#'
    'd02Eh>3mYFIZ5DC6MP~2mCrwUK&i?fFsk0>}p<<z%9{2y1Y;Fkpi2?(kQ*vB0A^^NCGb%8J6fMhkvCJPQ`e|m}9v7UemblT@TGRW2I=>&mGSR?'
    'tzz*XqU58RpS&ir5jnyL~@3I(*`h)slaf_Ow*N5WP%|T0p-s*dqq>>9#wKOwSa4H<5w5l%XGK&CY)V-'
    '_9~Xu<c|0#pjT9eYg?a1&{2OllyZ+bagK0qt&*M2_x<`bvnV2mLa1a>xQRv3t%11RP7^WaV{x3x^8{#Dr+*vwyQ2{d^#mSK&HY-'
    '&WlrNzA6SSBfrLW8uDT4-vC((KkiGxE_U=FePd_^J=3DyVTzp*+?%`cpi%-'
    'A~LAI@56oZfi)pFf4|KZjbATjicy!5TX+fMIdSU1w&1Okn5pK1eVMI=2a*hUVR<HUmv)iV9H@I4^Y_}g$OFpn=HM=2QuhPC|gR23~2VQ{!xsS6'
    '&y&BIDv66#AMW2px=y4=8YS!2x;5BiF5lFAvzA%_7AH%u<N64swaiurQ1Tzf{Z{7+%e7f*oh3-'
    'AYQ&JqKhWG{FB>aBU&>UO1S2@WP8%IWgP?6$`s0xqS<Qj)#5zH1r(_dop?a_ax~-'
    '+%jWz5y#WbHH|dCd^Mn3M}(2#7o?vl$SP$sV0~yCXCSIgO4}>Xgdv1<r{m4@dMa(gd7c9P6$5%e1f_6V(R|(pC|YVYU;DK3GCUDvd$x|t(m{D4'
    '1cnmTL%1}7dkV``0c*}fw2ATxBuzc3%_o7mf<?yJ$z{!-f#cwv+YJvyqzHM;m2DW;7oj=pB-'
    '8lzY7YP=;IrnGx_Af*T+T#6l8S}Snw~7&qnsyD_)N1PPq&tDlw3;zDb%9%`l~Njp$I+Ms|w{(>lQ<u&H(mYYf+#PCEb=?=GcthDN|3Lw3kWe<B'
    'XWmBp&BL)wA2{sQdax$&aOt`ZgIy@!4958n$dSK{MMjY@~d-XVoQ#4JwR!g!vwi8eKOdY>2Ek8x>-'
    '>DDm0izcfHrtFto9Y0h+3aedSi+Dly9uCGpT|u&bCEyth@ncXrD+vv7=6h4R_+{Rf#z9j`LLcK0okK0hMVVCO4Leq<+;bSZaz07DC>A2oOm6Bj'
    'BHL=Ei4wQWjIwHcT3(P~X@JE^aPT&DXuDu4`3vbn)tOQhC(S(_sv<K{P{>6xtegBtRq9Ro>)e}i^}W&ZR&`d%vP?!mV#~-'
    'bc_%V^Ukw_GU}*(xLke_Gh1<wbqPG*tFmBBoy1dxyAiX-V`_U1VJzl<IzDNmKO)#31c)4E8-'
    'ZE;y;rlEG%(d^r)Rj#<!mB5YaKJ`bVAdrp$Pg~cLxje7fO!|JfJU#AkLZrM!ir1al^*_(4gcUwr>^}hLx#&;w0>22$&SkaiJiVOpO)|1NW3e}3'
    'Z2j)nC}gh^FN6AfY-'
    '*J?93Ej|7^S{_GP9rUtm11@q@9uYMdWyvrb6)K=x~zeUtSdUCRswNiqr_v1_Sa2vnc;WA~=KAW|OX7Z(ipF^b*SJ|4(|64;<EPLp8t4{tLL4MH'
    'UGI3qqZ)|Z&tG==hDz(|h%oq^?eGP0ER7E%3j?@aEWda&g!pE&4fAmhhKd0USP>h+&al$Vxr3?VhzDp!P8hMb#+x-'
    'zuGEd2!&9Lj6^j_tpQ5yj)$r>?RB>?SMvyy7xe5$G9hGbK(;C&zQ~p)9`!V7JCtIRMEvurY5vSSyNoz+LYcZYmN3oDEEqg%OVjFu~TKXAa^e&B'
    '$)&`jbx-sCVvKv%=O+aO$t%Yo%dUQI_u#MOjX--mlwle0Dt;UJZ)6FBqxt!7R(SOy}UPI;{?mojSLW86UT5$)AU)w$1$ouhTF>8>Oa5t*qr5*y'
    'v9ww@w2S^D%FDeUw~<f2!47b6J!|7nA}1(Oz`gt>AjExkZr_Ib^yTb=svCw)5Hi++X+)^DuP_ms;4)yRrF>rg_!ten`rbOnzY9@O>|)Ma0#H=|'
    'HpdZtEhuZB0D_fC!~)Bmsu{{EJzw`Ld<VUUr%ON7F&ZO1-u$US3WB^ss|QrCDg66L$E?aoxa}gW-'
    '!QVbR`6<T3!Jgg@q3=Y)<PGKuKiv!{vFjvUDnDMwQiU|JI(jwK7gisTpvR1srpr)xjXslkX9!NWVHWT9!MRKl1_oAMq2IaZ$5BQqFEl9LJMRgh'
    '$fy;;K?Ek)CZl@e)cxwO(ehHpFF?l6BQTF%LQZmGeR_e@)b>*FnZU{oVpzu&VVDNp!ygeWS$R_atM<bol^R9E8ye5swX?BsU(yH!n%pi~9O{^0'
    '7eKN??;I^E7lPM)hzZeP$}pYuLlr0v;;M@W@XDxPOlr#_(SAMg8qP@zt7O#HfWC;~<inggPT!;%1RN7gafJEG0cvOOjB+?C5Gw5}GXr^_((J$e'
    ';ZNFSc6O@Pa+J5UHno?|?hR7F<W(u%~*xaucji-'
    'r~HtqdTMe9fsPz$sYOjaT{AU(QaOAj^@RN4_EoFf6%eJzzpj`dc}5hw*jw4>P9O^}#58{5azQ<?pP;cz5-'
    '3cX$6ry3Fo%&fcPKtt;)0GFuIL<Krq4EGly&4T{i`qpB^={3R^cHZJz8<2fNTRmKok%bJJ)AWuIC&h9O5W^?p<{B~BM$i?O;A_{<BY@Wz%Us+O'
    'o2-&+3I-9m*eO)w$ee<ki4(n|9Xk+sk<O>^4w?#4R+S;h}P0)^eEw)>-(J8$Zh)w=KtFhz='
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
        root = next((p for p in [start, *start.parents] if (p/"Makefile").is_file() and (p/C_REL).is_file()), start)
    if not (root/"Makefile").is_file():
        raise SystemExit(f"ERRO: Makefile não encontrado em {root}")
    if not (root/C_REL).is_file():
        raise SystemExit(f"ERRO: {C_REL} não encontrado em {root}")
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
            "sha256": sha256(src) if existed and src.is_file() else None
        }
        if existed and src.is_file() and not dry:
            dst = b / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)
    if dry:
        print(f"[dry-run] backup seria {b}")
        return None
    b.mkdir(parents=True, exist_ok=True)
    (b/"manifest.json").write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    return b

def install(root, force, dry):
    cdata = unpack(C_PAYLOAD)
    adata = unpack(ASSET_PAYLOAD)
    if sha256_bytes(cdata) != FINAL2_SHA256 or sha256_bytes(adata) != ASSET_SHA256:
        raise SystemExit("ERRO: payload interno corrompido.")

    tc = root / C_REL
    ta = root / ASSET_REL
    current = sha256(tc)

    if current == FINAL2_SHA256:
        replace = False
        print("C: FINAL2 já instalado.")
    elif current in (BASE_SHA256, V1_SHA256, FINAL1_SHA256):
        replace = True
        if current == BASE_SHA256:
            print("C: base original reconhecida.")
        elif current == V1_SHA256:
            print("C: V1 detectada -> atualizando para FINAL2.")
        else:
            print("C: FINAL1 detectada -> atualizando para FINAL2.")
    elif force:
        replace = True
        print("AVISO: --force-replace ativo; substituindo C diferente.")
    else:
        print("ERRO: o C atual não bate com o original/V1/FINAL1.")
        print("Nada foi sobrescrito. Use --force-replace se quiser substituir tudo.")
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

    if not dry and (sha256(tc) != FINAL2_SHA256 or sha256(ta) != ASSET_SHA256):
        raise SystemExit("ERRO: verificação pós-instalação falhou.")
    return True

def restore_latest(root, dry):
    base = root / BACKUP_DIR
    bs = sorted([p for p in base.glob("*") if p.is_dir() and (p/"manifest.json").is_file()], reverse=True)
    if not bs:
        print("Nenhum backup encontrado.")
        return False
    b = bs[0]
    m = json.loads((b/"manifest.json").read_text(encoding="utf-8"))
    print(f"Restaurando: {b}")
    for rs, info in m.get("files", {}).items():
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
    p = argparse.ArgumentParser(description="Instalador standalone FINAL2 do Shiny Summary.")
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
    print("FINAL2 instalado com sucesso.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
