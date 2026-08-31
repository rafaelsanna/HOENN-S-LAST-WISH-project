#!/usr/bin/env python3
"""Pokemon HLW - RADIO ROCK / METAL batch.

Instala 12 musicas, cria um voicegroup pesado e adiciona a estacao ROCK/METAL.

Uso recomendado:
    cd ~/pokeemerald-expansion
    python3 PHYTON/install_radio_ROCK_METAL_batch.py
    make -j9
"""
from pathlib import Path
import base64
import hashlib
import re
import shutil
import zlib

SONGS = [
    ('MUS_3S_AND_7S', '3s_and_7s', '3S AND 7S (QUEENS OF THE STONE AGE)', 99, 25),
    ('MUS_GO_WITH_THE_FLOW', 'go_with_the_flow', 'GO WITH THE FLOW (QUEENS OF THE STONE AGE)', 99, 25),
    ('MUS_MY_GOD_IS_THE_SUN', 'my_god_is_the_sun', 'MY GOD IS THE SUN (QUEENS OF THE STONE AGE)', 99, 25),
    ('MUS_ROSEMARY_DEFTONES', 'rosemary', 'ROSEMARY (DEFTONES)', 98, 45),
    ('MUS_MY_OWN_SUMMER', 'my_own_summer', 'MY OWN SUMMER (DEFTONES)', 100, 28),
    ('MUS_CHANGE_IN_THE_HOUSE_OF_FLIES', 'change_in_the_house_of_flies', 'CHANGE IN THE HOUSE OF FLIES (DEFTONES)', 98, 40),
    ('MUS_BE_QUIET_AND_DRIVE', 'be_quiet_and_drive', 'BE QUIET AND DRIVE (DEFTONES)', 100, 38),
    ('MUS_AROUND_THE_FUR', 'around_the_fur', 'AROUND THE FUR (DEFTONES)', 100, 28),
    ('MUS_FAINT', 'faint', 'FAINT (LINKIN PARK)', 99, 30),
    ('MUS_EASIER_TO_RUN', 'easier_to_run', 'EASIER TO RUN (LINKIN PARK)', 98, 35),
    ('MUS_CRAWLING', 'crawling', 'CRAWLING (LINKIN PARK)', 99, 32),
    ('MUS_BREAKING_THE_HABIT', 'breaking_the_habit', 'BREAKING THE HABIT (LINKIN PARK)', 98, 38),
]

EMBEDDED_MIDIS = {
    'mus_3s_and_7s.mid': (
        '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'
    ),
    'mus_go_with_the_flow.mid': (
        'eNrtnM1rG1cUxa/juGk2JctSQoiJEMZCtuQYgkJqHv6IRFAcqU6NFyWMIQa7oY2wnaJdKznUmBAcRCl4002hq1JKKYWWFoop3XTV'
        '/6B/RnfquyNrNLYUIVkfjNTfas6573PuOW9m3jDS/Yebj0XkDRmRsZF/7j/cfiKSuSDl0cvJZ1u769sb1+NSzo6OHb8l5bWLFy+8'
        '/ab8fk2+fypy6VN5NevItCMTTiH32ayRaSMThmAHwTuO3HIkpsE7Rm4ZiQUzmHDEzj+qwYQRO/9oMIMYDH/iT/yJP/En/sSfBPEn'
        '/sSf+BN/4k/8iT/xJ/7En+0G5xyxfpjR4JwR64eZYAYxGP7En/gTf+JP/Ik/CbI/Yn+EP/En/sSf+BN/4k/8iT/xJ0H8iT/xJ/7E'
        'n/gTf+JP3s/zfh5/4k+C+BN/4k/8iT97EtS/F/jmWLApNuUyij8xGP7En/gTf+JP/Ik/CeJP/NnXYHlaKv8EOPqt/58AZ+T4mvzg'
        '/vXf15mSsU2Kxkgp7RQ3i2kFO3n3uKwly26JBWmzbyzaN25Z0jmUYtIFtkxBSkHKgnsK7rmRPceNJBUktb1vMLdLb5BCropeXLeF'
        'tr4WZhVkNXSCbBcrH9pqK+a7XDtD/5YrPdAZP/BPPa0gbV5esWfszuZXbWhj2nBJwVKt+l+2/qpb3w6jQIdJrrplhz0o++VKLVne'
        'idZHFlWQRU3fgs5zwYbmFcy7tS0wOvNG5+4KuedUz93X+V3N2V3tc0lDmoQFBQv+SnMK7NIr6Ros2tVXmtW+Z81XttKqO/C/voGX'
        'FSzXkn7Y53QeyusN0GpZVkHWgoyCTHfLqsBbs+O7ds2Oza/v7GzIH+Pyo67XT+SLq5uF3POrJjAgpCDUORhXMN45ID9+4DUPKwhb'
        'MKFgIjgA/7C+hik/rK8+X3+8sW4ouNHuWKwvrj+dgJiCmB9EFET8ILS5b9wkRDUS9YN6Q7ZShySQBJIQ2CRwzfyf74kG+pnkfPnx'
        'Vnd9xFu59XXqh2gldawv9kS8c+D+1S7APzwEkgSSQBIG957iPQ12CIb1mYT8kB/yQ34GPT/9febfc577v5dKvKPfXmS21j9+Kn+O'
        'yE/67cV78mX6tpjbhdznaSPGQKFQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhUKhUCgUCoVCoVAoFAqFQqFQKBQKhQaCer+QjP0t'
        '5dFLi9vPPnqytSs/6w8k83IUT0noUSF3EDcSMnJ0810JvW/pTY+GVyo03LC0Oe1e2wo+Cm9YEHZB/tQxupY/iPqOEXuM2GPoUf5A'
        'O0ykZHJewh/Y5gkjk5Vu3RMP+bttEqkHrbRq0s/UyXymKpOJuzOsajFZyUM1UqNuk5P515c2p0FoO3VSOlUpjdd0iQdEF68IRVgp'
        '6IIu6IIu6IIu6IIuvWhr9ybVjUmDtvGUJ8qpLEXXJLJmsd3tRPzxU73tOc0S3VIXhVzjR+NB2DWev2394kAEREAEROhW2zM3t7Mv'
        'tOxdIJrJ602A11o8TKELuqALuqALuqALuqALugy/Luwp+7uxRwqkQAqk6F3bs2+52j2e76uxoWvVhS/p+tmqTacyVm8d0tpiyyPb'
        'gF1E0CsgerHAWGBDPFbXngbPfPjS+Nn3tfHytPwHs3qQGQ=='
    ),
    'mus_my_god_is_the_sun.mid': (
        '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'
    ),
    'mus_rosemary.mid': (
        'eNrtWc1rG0cUf6nduFDSSyA1CNmqEVYlYcUgCVvyxppYEfbBCW4dRA9ByJCA0iTEOE5RTrUk28LoICFMwBR67alQSigUeugX/QMM'
        'vfTU9i8o9NKb+t7srnZXu/paS7Ykz0m/+c17b968efNmZnX3fuYhAFyFK/D2lT/v3t95AvDeDaiNvbv+aOuha/Xl492tHah9NDax'
        'CVD7ZHz8rcl34EcHfPMcYOIpVBaTJdfeIoOKlCyk9yRWZJV4ssj24uzLNp0LxC1gZ5BAEME8gXlGXVneE03mM3tRVnIhym0jIksI'
        'JAQxsh3jALVirNw7i3HSirNCurJM1DLrh7OKIRykbilI4mQ7TCBM4QpQX0Ab7jWrRCiCEfamjkQs7cWyTN6VAb07ZRUfifmw00vA'
        'i6CR+U+E2VaYv4ZKksKcZD9A5XYSwkTfZhBmojlyzWgS+PpjKgVGv4mpvUapvUapLYqDjeKQ+0fsIFETRqspVl/k8yg08dF39e8F'
        'UNjaTZBfh9ee4+vwuu516PrwzqOnW6+88LMDvuXPwkK6uogG8vj0qy7e4wApegTm8fSoSvc4QCpOKI5UPGECkgmETMBvBBc47gLp'
        '47FZDSaKLI+HHjJZTkQT+Uw+SoSkEJJKhBQipBBRMscBHpgc0InLfY8RiLHcdjVGfsWICqnAzNSBn4MLdlAJN3qxTF7gBaS6LHEw'
        'DJELkoNBjiSOoBomKkxA4gD7AqSI+6Q6T5OdN4CECUgm4FdAhGQiBCQTCJmAv/8gYQJncUxsFbFVlK1Ship9GMgnWe53kRUiK+Ss'
        'KHwlckHkgpwLBz/huZFUDhBGgCFIEEggWCWwyooMKZwtUXRP57Ya1UoujQoRCNGhm1QO3QXSpxgsEbPEI5ksuThl5QAwZUAmj644'
        'dIvAreY6shjjrkNC9h4SBhN1hV7ORKHmiJrTg7oh85QM7tblmmjqJ6atiaGjHhuriYGkTFs6w0KN5Kzqz64bn+Kz69rHmVe7mWfq'
        '33K/TcF39OD6/OAYXrvThfShm3UJZgjM6IE9O650bvvQhWCawLQl0ysPPQQ83YIpcmMKgZOA05IRMRz2GAo7PcwELwGvJRi0eY3G'
        '3onSl0b+8e0wyj82BgQpyMEhg8SAh8ggZzyCPAs5QxtfLnpFhtUmt62nELjxzqmnDjaUmjQMerlTcSqIW6k4WQUpSHGyni8pEkyQ'
        'Yr9fHtJ84jfeUgrpSy/USZi0L87XnVAbG1/ZevECfv0A3tCH5s/+gOPJVBn2J1nuLzieSeW29/HeduxeR4BXOuwsMuzsuquQtqMl'
        'DAqDF2/Qu45aXiPALgIeAh7Soi7ScqRKrn0HB9hFwEnASYBk2oC6h12B+uh1YM+Oi6aDteJ4msC0JdMrDx3U5egWTFEwp/RRNTMi'
        'hsMeQ2Gnh5ngTKlFxgQGbV6jsXdmUupYAlgBe5HvH9BOfLoD0MdvPcUvAUWmpw42+L1gOPRyp2JXi1uFqIyiMtqpjGJRhmm9zDvO'
        'lVKrRIpXiUL60gt1EibtI9n7/0JtbOLOzstnTx7vwvf0kSx78AU7cWPMj9ys5GqDAivAGwEG5nYhbbPtlttwMrspHc3S74PcthFE'
        '1lAwexQhuXwG9bKowwHMPiAMs0qTxAIWYka+QauZmP1RsicE6VevbM2iav/mpx+yqXTb4Bgcb5D2b/CmH69wJ6QpLxz9Zk+oz4+/'
        'alu11jBfn2zUpzVJwWf03yREuLVyMzG9UaIMgxi124/ZQrnfQ7eIVc+HbiXdZrW09W/ljrwNSDIyoCHoMNmgxW+XgdVLB0Lq/g2B'
        'e123BZdgdtOimomaOdI109zUb53IGmHNBRvKVmIaX5fXj9GXMbWmwfTgONBJuBu7u3G0eWbbT85+aLXfv9aVyTKtWosNTfKe85ha'
        '1ehu32iyFgVpDgvSnO5XLVDqrxd/vRYFy7dSBjy9cr+I+/tgnkX6JbM39aa5K1Z4wFa4cfOqvKwl6d7exA9EKWthe6CLaZ8vIb1Y'
        'g2ZK7fPAMvF7k8Id7u+eDTZgt9t+jdz6TtX/8TudeYfN7Dm3zj/nOy/2jdtV86ndna1R3s6MWz1wu3wUCFMdXkksZK3vcMonp9pN'
        '+B+D8H51'
    ),
    'mus_my_own_summer.mid': (
        'eNrtWj1r21AUPalM0qVDljYUI9vBEcTGbmTyQTKER9yhS6gLoWQw4gU6NIRSE6elW/1BhpJFZPO/KN0KHUr/Q/f+E/U+qZZdW5Ya'
        'i9QfudvReefqnnff9XuW7MOj168ALGIB2sKvw6PzM+DxChxtqXJavzhJm3BeaIs/l+EcJxL3Vu7ju47Pb4Glj7AN2aw1DAHbVMAk'
        'UFKgJIKGigoU+4dCmIIChcChvGzLRt4FxOQF22AbU2+jJFGQMP6kpiil35XYVDyRuwKbLm/vSWxJuLfaE9gSKI4KD1TuSJDYzbsj'
        'QOKR2WMqA83/u89tCVMiJy8rjW0BKn6OqzS6StROvSp1SVJy6bjB/lOD8X7ONtgGn/W8FfNZzw023w1WltiXcG9CfFlgX8C7Dw9N'
        'x5BznNDUy5i/JbTmGxLrKpQuNwTWb0SGtid1Ta+/bjdR901TX0JuBe7IKejIiRwqvpLPYP6Sx6XjBrvFBuuSV2mftNXWvqzR7uc8'
        'gff70IMyHC1xcFKv40cGX9SvQe+/4TppNWutpMD1mgJr4WBVgVXRFxXCZBTIBA6lrLZspVxATEqwjem24UeF3Hk4KoQJsaFbl5WW'
        'PrnsVATdBcToXISBIvDngm2wDd4zec+MLIIP/KjJguHVGXaYVLNIji2e55nevKuImYO2vtvZH1m26gUCovco9bCq/mr39Pzdm7PT'
        'C3xVj1If0DGqyB0gS9Gf6FEtK9CJuvSw4o2qh41wWTx+vCyzO6PB0XAxrxTPiGc03qfJVSqZ+czjTY8fuIwpi+QjBM1atJQd32XH'
        'vOPwjHhGPCM+uflUYcez5JgUWcsXZX0fTMYgfSZgSVy9r2zLrjJeIC/BDK/gZHcNzsJZZiuL+dzDHfPlVdolod4x/wZVfCOn'
    ),
    'mus_change_in_the_house_of_flies.mid': (
        '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'
    ),
    'mus_be_quiet_and_drive.mid': (
        'eNrtW71rFEEUf2owgr0fRYLGJOBxXjyDwYQEx/OKswgoWFiIjGARETFolOnM7QkhWFwINmn8DxQRGzsROxv/BAv/AEu7OB83u3O3'
        'H7ebPePd5VfNvo957/fezr6Zndldvr3ygIiO0iEaOfRz+fbTR0SLv2j3yOjNh8/W7p8p0+6tI8dHv9PunZGRw6eO0Zcx+vCEaPQl'
        'bV3ndJXTFd7g69cZXWV0heVm1jhVOS0pZo1RldFSfiZwDjjODeYw5ziVORWV5hyjMqMia9LWNU6XOU3x+ur6NUaXGU1J1Sku1t02'
        'USlSaJkihVUJKFBa0MySsragmSWHKbrwFn3eYkgv0mB65h7cCCQXyR3k5NoUbFU4zSl5hdGcJUU0VVUVSqpWTXnqIDMY0gjsnRHD'
        'lV076mKGV4y4g90apUk25PgMlEutviVLilhqxlAzMR2TyTSGkAKkwK3hbrHVZcDEaEqByxRdeLremM6m5MQyc7lJnFb6M8s+1OjZ'
        'LCzuYLfPCJE2/OlwCOdCpA+THSo9UoDJrs8nO2wGAWc/48S2BfaEkFwkFxtueAfBAhwpwDsI3kGwZgbO/cRZbD1KRfMcdZA3VBex'
        'fkOrG0oKXdIXJhta5lSTusuMapaSQpf0hT1DdJHTeUldZHQ+B1XmVJBUmVGhCzWQqZTjwfpdcng+tKUYxX+fzvTJbfCcYgSTN5gm'
        'Gf/vsKuBF28kF8nFrgaGLpKL5CK5KLoouhi6SC6Si6KLoouhi+QiuUguiu4gZVf/LWq2efXfomr87M6Q+df5xI/gX+dL9HWcPuqf'
        'm+sbtG37Nbjn98vLtAAl048kLxM4DyLOP4Gn+qrvSfhMEQEpUtFhUjJTJPK8lQN8N+q/Mb6Bs99HqH20W046SHOO75lj8u3WIX8b'
        '6QuTDZlzfM+c42+3DvnbSF/YW0TCdjSHw545HM5AmcNhzxwOJ1IDmUr1GYTnfwaxHXwvEcF0Ff99OrMkt/1WZxb+X0NI5WCnskle'
        '61sRzE/ACZzACZzACZzACZzA+V9wyiVpeF/75PtgX3uWvp2lT2pf+0V9g96cvldffXWaCXkhZNvG0BfkXgin9VbeTCjJhNSdkJwJ'
        'KTkn23OybQmiLyJVBZAACZAACZAAyQFFUpQMOXPL9vUZeSHNB/4kRzvcTx3cIyABEiAZ8vrmx9/gqVnG1JhsxxLacdmOR7RwvI+O'
        'myQNvMObLpAACZAACZAACZD0IxK9Ugl27Utrate++vT540cP1+iz2rIXf2inUGnwzQJLvJiv0eQ9sTnPaJIJSenLHcWaNNLpu5o1'
        'HSntRod7iwwes3hKb0UgZsTchzEr0XSCVmA5bfyFiu5TMGgKFX3pa0mp6lswEYSl3ehw7ywes3jamxXEjtj7PXb7zMdpBZaz5gH1'
        'HvV++J97xIyYD1Zdn63qvrNu3/qqYqvOs6qztyJJfb1z4abYvBAp72qljZ1grb17yKpwkcdDTFBLazMWcAr1PeNOl9qeAN6TbVea'
        'OyfhWTGqc2+0omdHh4vVDWJGzFjFYnWDmBHzQKxiBVavWL1i9Rqab13K6tjW2s/eV8DfvvizQ7V9RSQHYc/VIoZSZ5taawgCaJLx'
        '+RYn3Xh/QsyIGTEjZsSMmBEzYkbMiBkxI2bE3NOY7Tu3+vb8L+H95PY='
    ),
    'mus_around_the_fur.mid': (
        'eNrtW11rE1kYfrRq/QOCxY9WTEZtQtpp2jQdI541wooQjKDihZQjGLCIWGsV72wNpZSFbdm73hT2Hyx7s+zdsvf7FxYv9VfE8xE7'
        'menkq+mYtD5XeeaZ97zznOe8M+cDUnrw/BmAUziGoWOfSg+WXgBT/6M2NPzz24Xlp0sV1O4Pnfx8FrXHJ04cP3sa/1zEH6+A4Q/Y'
        'uiGRl3AlknJ1ceWGQF7AFUiKA79VlQf/sOsSOYkJzV8XyAlM9E7OSkxJpDQ5KzAlkOqKpKE0lIb+UIZO6UuFt/Ia5BsZVwOXlcXK'
        'oqE09AgaelPCM2mV4HRd800Bz+RXstNWOcNCYd/urouVveRaOYI0E8k3clqPI65qctqM49V2ZFV2SrbPOSMxKXFNkzMCkwLXBpMs'
        'SMxqXpEFgVnDDyLJYmAxsBhYDEesGLISGYkrmswKZASukOyFzPuLik2s5P3lxBcubLlToKE0lIbyHI+VRUNpKA2N5xyvCK+IXBFu'
        'EekiksUmYR48DzkProe0h6TXW1gJXgm5EtwS0iUkSwOkjbt17tZ5dMNiYDGwGHiOR7Knc7yPv+oyV6M0Y/aeqlj03nNSM7aIVLgr'
        'fhnbSmkqJXb8cjF3bJadfScJ1NxhIQdwMU0/6Sf9pJ/0k37ST/pJPyPI2v2h4d/HEGFr5H6okaxNwP7L5cxf+l8u5YU3y5WxLP69'
        'hD/131re4beR+dXFjyOiBVhd9KmkBslIcFmDy63BqAajkYA6qIM6DpuOTf20dVF/7Fo5KOS8BueDoCrDIBxzQYMLvYOEBoneATvI'
        'DoZizmlwbnDAyPwmVHe+8PNEHdRBHZzOOduxg4d4Ot/toAFVqZBSb199BZLmlVVgVOww/ADD232EuwSxTwrUQz3Uc3T07M5nFuwe'
        '347+p49vby+9ffliYRl/67Pb99gevwU9KW6MC6h5cTvxXGENwvy8zztPLO8EeUOuLu5FzVr7EYVt525hQ+cL/2buwEjKaBmqQfi6'
        'ScL9ybD5aAftoB1tZZjuTzuioIOMisq6MDLGbymgA9xHSLyuyg3X2pK5Y7X4qZVAp2JJJ8iHI+fuqa6oVHP7TuU8eW/Nqv/O1cXV'
        'M7r3rFduaAgV71RsHxxzaWNaBLTIY3knyO9J+IO41tjQFJjT0qYu47+3iSqgnirw1sXsoN/DQ1h3/bCsg4BIs2wrTgCcD8NV5Iea'
        'MlUXcywOLpZoR9/taK6aS2guobmE5hKaS+jvv4QOeZS9rXDWAPWNtNgJ8n5AYt7iRFR86G5E83b5ldRso2bTxJJOkG8mqfNnNYuM'
        'qReRTQZQfOsh7l15TCW01/O2TWh+IN79CYmHkZ+FmAaX/vfT/27mo86m3oi5PHDZYZ54hHW3TGudeTdD6LyhMfOgrIf2s0QNjVrT'
        'fYHJcJAL3tiH3hfcuVGR9dntoMdY+e2k9s3Pvr7vHb5ErV7GVFl9P9fKGykbELysTeArrNyIAg=='
    ),
    'mus_faint.mid': (
        'eNrtWc9PE0EUfghBjTFyFCVkkVJJw69G0oBKMqkcwASDPwg9GLNNICkB2w2o2ZO6hQCVEAmSJhiv3o0xRk8aNR79G/wPvOppnTcs'
        '3UpLsbSlpXyn/ebbN/vme/PmzezuyJ3IBBHVUw3V1/wcuTM7TVT3iuzaU9djk3NGRBsKR6Jk36ytT3rJDtXVHTt7gr730PsY0fFb'
        'lBy7bBmLY2K1QaKrElByXF7H5TV02VwM8Y0bbHJDWEZylNGoSPQkhxkNM1ccVD7nf4yjqry8zpcR93I4jz8vp3eyu2mrRp37zTUq'
        'OBue0AYnZ+ZiUfrcTG+4KD2xxdqATn7dMp4OCPILKmFzUKc+bg4K6stsBnUKcDMoKFDcZm6/QqdebgpBvXs2oRd6q0mvX6cOndqY'
        'kYo6BLVlJz9opTB9qa3183iok9l+NaROaZqFXNHWrnAUqJvZKyoQ3dI0Czmvo6Qh5aH3iOotV7MaS+k6SimWGvSilFZAKe3T6RLz'
        'kpRCLil+rZcLFrUz2auqWLskpVmXTheZlGZdgi7mZamCGcg+DMs4qHHIUyzCgDAgDOmWn3SudgNuwRvgmrfagJ0IeqEXeqEXeqH3'
        'CL0p5Axs6v9XU4Ls2tMjU9OT2u3IVDQ2EdboSzO9VX/ArCVadw818dTZqhJJ95wUT52TKpF0vzrFU5+iKpEMcL6Qj8mAShlfXqR7'
        '6o2nTr3ZyQLjifxEflZuflrvkKHIUFRQ5Cfys+InrrBK/xUrCSsJlR75ifxEpcdKwkpCpUd+Ij+Rn8hP5CfyE/l59E7KeWRy6ofk'
        'GR/ZtcdHI5Ox6JRJ31roHf+KfGSLjbZ7lrEgTXOBRgaNhYMmBk2FgxYGLYWDZgbNWYHGQEsHOcaD+OQXnw/a/1AvtYwhrWgbrYxa'
        'JeWAeR0pjBQueXyKBUq5FNaxFLAUDuFSyHR6nsH5LIxlbHeTKI9+cpeAu2K5+6FjjaCGID6IT9Udx9w3Zvol35hPDoWjE9q1mbBB'
        'H/mF2fykb3rvmgmvrJib3usMTOfKhLqzOHSQJpaRdmtpgbap1QbHKh5xwLP23e+5si885g8Fg7MP709PPXBEvxabHhmehEdQyYBU'
        '5QuS556Z8AnySEW+IMNc19zWxXiWy/I4TTXeQzRKGViH9gW3cDrgPst9m/6hLUt/hiWpdJHYm7Kn7Xxx7VwifRwZvd2n7jKuUniD'
        'Nmg7CG2qqrp3drsqWfO6KytfNWb2cZVljqrZGyYK3uAt01uiB9sOtEHbIdS217Vz1Ex0YuvDGQUTBW/wtl9vSwK7EbRBW7WfkPbj'
        'b0dQdjbz6ly4z3m9WpSoKVGd/cVKDUzVQU+V+xvIQYke52eGov4B8YgDFkL76/cihIoIbdBWkDZlt+3Iu/WQvfbOgvdQzCK0QVuF'
        'rL48TsxqrKlt37MLaXfTXyczEsw='
    ),
    'mus_easier_to_run.mid': (
        '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'
    ),
    'mus_crawling.mid': (
        'eNrtWE1rGlEUPWlM0/yDpogoGQeRGLGRkDQJPETaZhFoIYsuZHiBBhpCaTAfuKuOgriKiJusu+mii1C66a6U/pD+gCzyD6b3zZA3'
        '0tIyGmPjeHfX8+7HO+9yz1zc3nnzGsB9TCEy9XN7p3wAzFzAmZ57drJ/vFvei+fgvJye+/AIzqtI5N7DB/gWw8U7YPY92lsSRYlN'
        'uVHdEigKbIqg2MYNYtHOSSxKJOUZqjmBRYEkgWsSeYmMAtcE8gIZAgnJSqQUSEhWIEXgusSKwpuiui6w4uLtVYlllZbAVYFlN+2o'
        'CtkfS/yWQypUu+S35EITVMjJwtPtSJ50e6awe3S0h+8JfFYifYpOwqobdkKgM2+dwZ4XCiFDIVFlRMlYsJrCXnCPyBiCs0ZSyof4'
        'dOJWXdpx14eMUUfpq2ofzUIjSWUke4+iyoiOJmE4usPvPFbOvnY86d35HuNHDF/cJa9udH0ha2gh6/pC1tBC1vWFrKGFrOsLWUML'
        'mQ4n0A8fUSH7E0LHqXYVPk5caAwKaQWJPSUFmS2WT94e7B/jqxKPCs7ThVq+lRY4XyrUDltLZBgWcs/JNgToYsrh0HVIF2CWPNv8'
        'DTcszzb+4abz/+kfJPzGVYbPwixVrs8Nq9IygnHrM8YsUTfqsmVed+PWaXFz+ouh5uggZF54k5Ph5tyJ5gS573D4cX7OP8n5w6dS'
        'zGKiWPDey3svN2eQvdc99YbHc8hN+nexKXjd4HWGFwFmcXdYBAgn2eItiLcgbs4gzQnH5IyARRj//QvjCPU69EVqcGeeIWYxhnp2'
        'K5Pifl7o59++/f9lQp0sfgFzrOL7'
    ),
    'mus_breaking_the_habit.mid': (
        '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'
    ),
}

MIDI_HASHES = {
    'mus_3s_and_7s.mid': '96248a8eabac334938cc8775135da2366b1139c2f4ba324583e1d64f2e4f6cb9',
    'mus_go_with_the_flow.mid': '5e1f1e01e0e16c240c9eb4b0c521b9faf13dc7b69634b0efcf02d8cfddebcf8d',
    'mus_my_god_is_the_sun.mid': '4a555df6f9c289ce4e6bb833c80edb6f61c3d75483858124fce75ae87b1f28cc',
    'mus_rosemary.mid': 'c55e690b2ce6883c8947216fa08267d8011b8da36d93319c21c7565b5deed57c',
    'mus_my_own_summer.mid': '6f1c0f3e0131ff3c4f33b27f242c87563834633eb892ff41b71d3a978409b52d',
    'mus_change_in_the_house_of_flies.mid': '8d8fbb38158b5350bd04dc229de9886a8dc1a1625b163f60ec01b463ceb4d97e',
    'mus_be_quiet_and_drive.mid': '85f4b79c3de1ce70da463ff106682678db21328cf65593099fea590eb25991eb',
    'mus_around_the_fur.mid': '2b46bb03d4647d518ce8b57581a3d3d07e6e5447332ad92f36467bd116800124',
    'mus_faint.mid': 'cd52ac0b28dfb18588356754901d1f3d9f7348eceb664dfe7322b120606b5f13',
    'mus_easier_to_run.mid': '2a974b05e96be03e9934e290b1569dfff4466d27b6e22a6c3b966c2aff159364',
    'mus_crawling.mid': 'dc7d6afc52e4ccd084719f70d1dcc4a6231253e857cf65d768d590eea50c98b0',
    'mus_breaking_the_habit.mid': '6ad04800075b93da2b618bc1e557966bb1e2409826952b1d32e12bb4555ec2bc',
}

SCRIPT = Path(__file__).resolve()

def die(msg):
    raise SystemExit("ERRO: " + msg)

def find_root():
    for candidate in (Path.cwd().resolve(), SCRIPT.parent.resolve(), SCRIPT.parent.parent.resolve()):
        if (candidate / "src/radio.c").exists() and (candidate / "include/constants/songs.h").exists():
            return candidate
    die("nao achei a raiz do pokeemerald-expansion")

ROOT = find_root()
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
MIDI_DIR = ROOT / "sound/songs/midi"
MIDI_CFG = MIDI_DIR / "midi.cfg"
RADIO_C = ROOT / "src/radio.c"
VOICE_GROUPS_INC = ROOT / "sound/voice_groups.inc"
DIRECT_SOUND_DATA = ROOT / "sound/direct_sound_data.inc"
VOICEGROUP_FILE = ROOT / "sound/voicegroups/hlw_rock_metal.inc"
BACKUP_DIR = ROOT / "PHYTON/_backups/rock_metal_batch_v1"

def backup(path):
    if not path.exists():
        return
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    dst = BACKUP_DIR / path.name
    if not dst.exists():
        shutil.copyfile(path, dst)
        dst.touch()
        print("[BACKUP]", dst.relative_to(ROOT))

def write_if_changed(path, text):
    old = path.read_text(encoding="utf-8") if path.exists() else None
    if old == text:
        print("[OK] sem mudanca:", path.relative_to(ROOT))
        return
    if path.exists():
        backup(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")
    path.touch()
    print("[PATCH]", path.relative_to(ROOT))

def parse_defines(text):
    return {m.group(1): m.group(2) for m in re.finditer(
        r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M
    )}

def resolve_value(token, defines, seen=None):
    seen = set() if seen is None else seen
    token = token.strip()
    try:
        return int(token, 0)
    except ValueError:
        pass
    if token in seen or token not in defines:
        return None
    seen.add(token)
    return resolve_value(defines[token], defines, seen)

def patch_songs_h(text):
    end = re.search(r"^\s*#define\s+END_MUS\s+([^\s/]+).*$", text, re.M)
    if not end:
        die("nao achei END_MUS em songs.h")
    old_end_token = end.group(1)
    defines = parse_defines(text)
    old_end_value = resolve_value(old_end_token, defines)
    if old_end_value is None:
        vals = []
        for name, raw in defines.items():
            if name.startswith("MUS_"):
                v = resolve_value(raw, defines)
                if v is not None and v < 0x7FFF:
                    vals.append(v)
        if not vals:
            die("nao consegui resolver END_MUS")
        old_end_value = max(vals)

    next_id = old_end_value + 1
    additions = []
    assigned = {}
    for macro, slug, title, volume, reverb in SONGS:
        existing = resolve_value(macro, defines)
        if existing is None:
            assigned[macro] = next_id
            additions.append(f"#define {macro:<42} {next_id}\n")
            defines[macro] = str(next_id)
            next_id += 1
        else:
            assigned[macro] = existing

    if additions:
        text = text[:end.start()] + "".join(additions) + text[end.start():]
        newest = max(SONGS, key=lambda x: assigned[x[0]])[0]
        if assigned[newest] > old_end_value:
            text = re.sub(
                r"^\s*#define\s+END_MUS\s+[^\n]+$",
                f"#define END_MUS {newest}",
                text, count=1, flags=re.M
            )
    return text, old_end_token

def patch_song_table(text, old_end_token):
    missing = [slug for macro, slug, *_ in SONGS
               if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)]
    if not missing:
        return text

    old_song = old_end_token.lower()
    match = re.search(rf"^(\s*song\s+{re.escape(old_song)})(\s*,[^\n]+)$", text, re.M)
    if match:
        suffix = match.group(2)
        pos = match.end()
    else:
        candidates = list(re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M))
        if not candidates:
            die("nao achei song mus_... em song_table.inc")
        match = candidates[-1]
        sm = re.search(r"(\s*,[^\n]+)$", match.group(0))
        suffix = sm.group(1) if sm else ", 0, 0"
        pos = match.end()

    return text[:pos] + "".join(f"\n\tsong mus_{slug}{suffix}" for slug in missing) + text[pos:]

def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"
    for macro, slug, title, volume, reverb in SONGS:
        name = f"mus_{slug}.mid"
        desired = f"{name + ':':<48} -E -R{reverb} -G_hlw_rock_metal -V{volume:03d}"
        pat = rf"^\s*{re.escape(name)}\s*:.*$"
        if re.search(pat, text, re.M):
            text = re.sub(pat, desired, text, count=1, flags=re.M)
        else:
            text += desired + "\n"
    return text

def choose_symbol(text, exact=(), must_contain=()):
    symbols = re.findall(r"\b(DirectSoundWaveData_[A-Za-z0-9_]+)\b", text)
    unique = list(dict.fromkeys(symbols))
    for candidate in exact:
        if candidate in unique:
            return candidate
    for symbol in unique:
        low = symbol.lower()
        if all(word.lower() in low for word in must_contain):
            return symbol
    return None

def build_voicegroup():
    if not DIRECT_SOUND_DATA.exists():
        die("nao achei sound/direct_sound_data.inc")
    ds = DIRECT_SOUND_DATA.read_text(encoding="utf-8")

    overdrive = choose_symbol(
        ds,
        exact=("DirectSoundWaveData_sd90_classical_overdrive_guitar",),
        must_contain=("overdrive", "guitar"),
    )
    distortion = choose_symbol(
        ds,
        exact=(
            "DirectSoundWaveData_sd90_classical_distortion_guitar",
            "DirectSoundWaveData_sc88pro_distortion_guitar",
        ),
        must_contain=("distortion", "guitar"),
    )
    clean = (
        choose_symbol(ds, must_contain=("clean", "guitar"))
        or choose_symbol(ds, must_contain=("jazz", "guitar"))
        or overdrive
    )
    bass = choose_symbol(
        ds,
        exact=("DirectSoundWaveData_sc88pro_fingered_bass",),
        must_contain=("fingered", "bass"),
    )

    if overdrive is None:
        die("nao achei nenhum sample DirectSound de OVERDRIVE GUITAR")
    if distortion is None:
        distortion = overdrive
        print("[VOICEGROUP] distortion sample nao encontrado; usando OVERDRIVE como fallback")
    if clean is None:
        clean = overdrive
    if bass is None:
        die("nao achei sample DirectSound de FINGERED BASS")

    default = "\tvoice_keysplit voicegroup_strings_keysplit, keysplit_strings"
    entries = [default for _ in range(64)]
    entries[0] = "\tvoice_keysplit_all voicegroup_rs_drumset"
    entries[1] = "\tvoice_keysplit voicegroup_piano_keysplit, keysplit_piano"

    # IMPORTANT: no nylon/acoustic fallback. ROCK/METAL clean remains ELECTRIC.
    entries[27] = f"\tvoice_directsound 60, 0, {clean}, 255, 0, 215, 105"
    entries[28] = f"\tvoice_directsound 60, 0, {overdrive}, 255, 0, 220, 92"
    entries[29] = f"\tvoice_directsound 60, 0, {overdrive}, 255, 0, 240, 105"
    entries[30] = f"\tvoice_directsound 60, 0, {distortion}, 255, 0, 250, 110"
    entries[31] = f"\tvoice_directsound 60, 0, {distortion}, 255, 0, 245, 120"
    entries[33] = f"\tvoice_directsound 60, 0, {bass}, 255, 253, 0, 149"

    print("[VOICEGROUP] clean     =", clean)
    print("[VOICEGROUP] overdrive =", overdrive)
    print("[VOICEGROUP] distortion=", distortion)
    print("[VOICEGROUP] bass      =", bass)

    return "voice_group hlw_rock_metal\n" + "\n".join(entries) + "\n"

def find_function(text, signature):
    start = text.find(signature)
    if start < 0:
        return None
    brace = text.find("{", start)
    if brace < 0:
        return None
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return start, brace, i + 1
    return None

def patch_macro_list(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado")
    block = text[start:end]
    lines = block.splitlines()
    missing = [macro for macro, *_ in SONGS if not any(f"X({macro})" in line for line in lines)]
    if not missing:
        return text
    xidx = [i for i,l in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", l)]
    if not xidx:
        die("lista X(MUS_...) vazia")
    pos = xidx[-1] + 1
    for off, macro in enumerate(missing):
        lines.insert(pos + off, f"    X({macro})")
    xidx = [i for i,l in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", l)]
    for n,i in enumerate(xidx):
        base = re.sub(r"\s*\\\s*$", "", lines[i]).rstrip()
        lines[i] = base + (" \\" if n < len(xidx)-1 else "")
    new = "\n".join(lines)
    if block.endswith("\n"):
        new += "\n"
    return text[:start] + new + text[end:]

def patch_enum_station(text):
    if "STATION_ROCK_METAL" in text:
        return text
    m = re.search(r"(enum RadioStation\s*\{)(.*?)(\n\};)", text, re.S)
    if not m:
        die("enum RadioStation nao encontrado")
    body = m.group(2)
    if "STATION_COUNT" not in body:
        die("STATION_COUNT nao encontrado")
    body = re.sub(r"(\n\s*)STATION_COUNT,", r"\1STATION_ROCK_METAL,\1STATION_COUNT,", body, count=1)
    return text[:m.start(2)] + body + text[m.end(2):]

def patch_station_array(text):
    if "static const u16 sStation_RockMetal[]" in text:
        return text
    anchor = "static const u16 *const sStationTracks[STATION_COUNT]"
    pos = text.find(anchor)
    if pos < 0:
        die("sStationTracks nao encontrado")
    block = (
        "// ---------------------------------------------------------------------------\n"
        "// ROCK / METAL RADIO\n"
        "// Heavy electric guitar, bass and full rock drums.\n"
        "// ---------------------------------------------------------------------------\n"
        "static const u16 sStation_RockMetal[] = {\n"
        + "".join(f"    {macro},\n" for macro, *_ in SONGS)
        + "    STATION_END\n};\n\n"
    )
    return text[:pos] + block + text[pos:]

def add_designated_initializer(text, array_signature, marker_after, line):
    start = text.find(array_signature)
    if start < 0:
        die(f"array nao encontrado: {array_signature}")
    end = text.find(marker_after, start) if marker_after else -1
    region_end = end if end >= 0 else text.find("};", start) + 2
    region = text[start:region_end]
    if line.strip().split("=")[0].strip() in region:
        return text
    close = text.rfind("};", start, region_end + 1)
    if close < 0:
        close = text.find("};", start)
    if close < 0:
        die(f"fim do array nao encontrado: {array_signature}")
    return text[:close] + line + text[close:]

def patch_station_names(text):
    if "sStationName_RockMetal" not in text:
        anchor = "static const u8 *const sStationNames[STATION_COUNT]"
        pos = text.find(anchor)
        if pos < 0:
            die("sStationNames nao encontrado")
        text = text[:pos] + 'static const u8 sStationName_RockMetal[]    = _("ROCK/METAL");\n\n' + text[pos:]

    if "sStationNowPlaying_RockMetal" not in text:
        anchor = "static const u8 *const sStationNowPlayingNames[STATION_COUNT]"
        pos = text.find(anchor)
        if pos < 0:
            die("sStationNowPlayingNames nao encontrado")
        text = text[:pos] + 'static const u8 sStationNowPlaying_RockMetal[] = _("NOW PLAYING ROCK/METAL RADIO");\n\n' + text[pos:]
    return text

ROCK_NAME_BLOCK = """// ---------------------------------------------------------------------------
// Rock / Metal Radio display names.
// ---------------------------------------------------------------------------
"""

def rock_name_var(slug):
    return "sRockMetalName_" + "".join(part.title() for part in slug.split("_"))

def patch_special_names(text):
    if "Radio_GetRockMetalDisplayName" not in text:
        anchor = "static const u8 *Radio_GetSpecialDisplayName(u16 songId)"
        pos = text.find(anchor)
        if pos < 0:
            die("Radio_GetSpecialDisplayName nao encontrado")
        block = ROCK_NAME_BLOCK
        for macro, slug, title, volume, reverb in SONGS:
            block += f'static const u8 {rock_name_var(slug)}[] = _("{title}");\n'
        block += "\nstatic const u8 *Radio_GetRockMetalDisplayName(u16 songId)\n{\n    switch (songId)\n    {\n"
        for macro, slug, title, volume, reverb in SONGS:
            block += f"    case {macro}:\n        return {rock_name_var(slug)};\n"
        block += "    default:\n        return NULL;\n    }\n}\n\n"
        text = text[:pos] + block + text[pos:]

    fn = find_function(text, "static const u8 *Radio_GetSpecialDisplayName(u16 songId)")
    if fn is None:
        die("nao consegui analisar Radio_GetSpecialDisplayName")
    start, brace, end = fn
    func = text[start:end]
    if "Radio_GetRockMetalDisplayName(songId)" not in func:
        needle = "    const u8 *name;\n"
        if needle not in func:
            die("corpo de Radio_GetSpecialDisplayName inesperado")
        inject = (
            needle
            + "\n    name = Radio_GetRockMetalDisplayName(songId);\n"
              "    if (name != NULL)\n"
              "        return name;\n"
        )
        func = func.replace(needle, inject, 1)
        text = text[:start] + func + text[end:]
    return text

def patch_draw_condition(text):
    # Ensure the main radio screen uses friendly names in ROCK/METAL too.
    if "|| sRadioStation == STATION_ROCK_METAL" in text:
        return text
    anchor = "        || sRadioStation == STATION_GAMES\n"
    if anchor in text:
        return text.replace(anchor, anchor + "        || sRadioStation == STATION_ROCK_METAL\n", 1)
    anchor = "        || sRadioStation == STATION_INDIE_ROCK\n"
    if anchor in text:
        return text.replace(anchor, anchor + "        || sRadioStation == STATION_ROCK_METAL\n", 1)
    die("condicao de friendly display names nao encontrada")

def patch_radio(text):
    text = patch_macro_list(text)
    text = patch_enum_station(text)
    text = patch_station_array(text)

    # sStationTracks
    start = text.find("static const u16 *const sStationTracks[STATION_COUNT]")
    close = text.find("};", start)
    region = text[start:close]
    if "[STATION_ROCK_METAL]" not in region:
        text = text[:close] + "    [STATION_ROCK_METAL]  = sStation_RockMetal,\n" + text[close:]

    text = patch_station_names(text)

    # sStationNames
    start = text.find("static const u8 *const sStationNames[STATION_COUNT]")
    close = text.find("};", start)
    region = text[start:close]
    if "[STATION_ROCK_METAL]" not in region:
        text = text[:close] + "    [STATION_ROCK_METAL]  = sStationName_RockMetal,\n" + text[close:]

    # now-playing names
    start = text.find("static const u8 *const sStationNowPlayingNames[STATION_COUNT]")
    close = text.find("};", start)
    region = text[start:close]
    if "[STATION_ROCK_METAL]" not in region:
        text = text[:close] + "    [STATION_ROCK_METAL]  = sStationNowPlaying_RockMetal,\n" + text[close:]

    text = patch_special_names(text)
    text = patch_draw_condition(text)
    return text

for path in (SONGS_H, SONG_TABLE, MIDI_CFG, RADIO_C, VOICE_GROUPS_INC, DIRECT_SOUND_DATA):
    if not path.exists():
        die(f"nao achei {path}")

# Validate voicegroup FIRST, before modifying project files.
voicegroup_text = build_voicegroup()

# Install custom voicegroup.
write_if_changed(VOICEGROUP_FILE, voicegroup_text)
vg_inc = VOICE_GROUPS_INC.read_text(encoding="utf-8")
include_line = '.include "sound/voicegroups/hlw_rock_metal.inc"'
if include_line not in vg_inc:
    if vg_inc and not vg_inc.endswith("\n"):
        vg_inc += "\n"
    vg_inc += include_line + "\n"
write_if_changed(VOICE_GROUPS_INC, vg_inc)

# Extract MIDIs.
MIDI_DIR.mkdir(parents=True, exist_ok=True)
for macro, slug, title, volume, reverb in SONGS:
    filename = f"mus_{slug}.mid"
    raw = zlib.decompress(base64.b64decode(EMBEDDED_MIDIS[filename]))
    if hashlib.sha256(raw).hexdigest() != MIDI_HASHES[filename]:
        die(f"hash invalido para {filename}")
    dst = MIDI_DIR / filename
    if dst.exists() and dst.read_bytes() == raw:
        print("[OK] MIDI ja instalado:", dst.relative_to(ROOT))
    else:
        if dst.exists():
            backup(dst)
        dst.write_bytes(raw)
        dst.touch()
        print("[WRITE]", dst.relative_to(ROOT))

    asm = dst.with_suffix(".s")
    if asm.exists():
        asm.unlink()
        print("[DELETE]", asm.relative_to(ROOT))
    for obj in ROOT.glob("build/*/sound/songs/midi/" + dst.stem + ".o"):
        obj.unlink()
        print("[DELETE]", obj.relative_to(ROOT))

songs_text, old_end = patch_songs_h(SONGS_H.read_text(encoding="utf-8"))
write_if_changed(SONGS_H, songs_text)
write_if_changed(SONG_TABLE, patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end))
write_if_changed(MIDI_CFG, patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8")))
write_if_changed(RADIO_C, patch_radio(RADIO_C.read_text(encoding="utf-8")))

print()
print("[OK] RADIO ROCK / METAL instalada")
print("12 musicas instaladas")
print("Estacao nova: ROCK/METAL")
print("Voicegroup: hlw_rock_metal")
print("Guitarras: clean eletrica / overdrive / distortion")
print("Baixo: fingered bass DirectSound")
print("Bateria: kit completo com kick, snare, hi-hat, toms, crash e ride")
print()
print("Agora rode:")
print("  make -j9")
