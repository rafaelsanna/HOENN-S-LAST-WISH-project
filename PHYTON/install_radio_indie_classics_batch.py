#!/usr/bin/env python3
"""Pokemon HLW - instala 10 classicos indie e atualiza a RADIO INDIE ROCK.

Pode ficar em:
    pokeemerald-expansion/PHYTON/install_radio_indie_classics_batch.py

Funciona se for chamado da raiz ou de dentro da pasta PHYTON.
Os 10 MIDIs GBA-ready estao embutidos neste proprio arquivo.
"""
from pathlib import Path
import base64
import re
import shutil
import zlib


SONGS = [
    ('MUS_FREAKING_OUT_THE_NEIGHBORHOOD', 'freaking_out_the_neighborhood', 'FREAKING OUT THE NEIGHBORHOOD (MAC DEMARCO)', 92),
    ('MUS_DRACULA_TAME_IMPALA', 'dracula_tame_impala', 'DRACULA (TAME IMPALA)', 90),
    ('MUS_LOVESONG_THE_CURE', 'lovesong_the_cure', 'LOVESONG (THE CURE)', 91),
    ('MUS_FRIDAY_IM_IN_LOVE', 'friday_im_in_love', "FRIDAY I'M IN LOVE (THE CURE)", 92),
    ('MUS_BOYS_DONT_CRY', 'boys_dont_cry', "BOYS DON'T CRY (THE CURE)", 92),
    ('MUS_ROSE_PARADE', 'rose_parade', 'ROSE PARADE (ELLIOTT SMITH)', 91),
    ('MUS_SHADOWPLAY', 'shadowplay', 'SHADOWPLAY (JOY DIVISION)', 92),
    ('MUS_NEW_DAWN_FADES', 'new_dawn_fades', 'NEW DAWN FADES (JOY DIVISION)', 92),
    ('MUS_DISORDER', 'disorder', 'DISORDER (JOY DIVISION)', 92),
    ('MUS_LOVE_WILL_TEAR_US_APART', 'love_will_tear_us_apart', 'LOVE WILL TEAR US APART (JOY DIVISION)', 92),
]

EMBEDDED_MIDIS = {
    'mus_freaking_out_the_neighborhood.mid': (
        'eNrtW1tPG1cQngREK1XNUx8qVaWLYoxxIYSEKAkrY3uzeG3ZrCnZSnk0EpUcpZEtQiT6Vtu5iPQBgp/6A/rey1NVVerlJ/QP9J+4'
        'M7v28fFiI1s4hCrfk7+d883MmTNnzoWcbHjlHSKaoks0denfDW/3EX9Z1Jr4PLO1ns7nXMcofukZXnbdcNdzTtYqbmWLRduIbaTv'
        'Gfb6RnrrXnGeWl9MTL36hFoPJicvf/w+tZYosHTlB7b0QeGr7R3Defpwb3uX/kjTjxUKKTzfPLK9evlbm+goJyDHwPZq1bBEcbhJ'
        'JBmRZBhYAiwGSWlK6hKNw02Wb6dRYjvfGUeuIJdFBWkrMMiLJO/7YCA+HGlyet2fYxdP9iMjkkyX1KOGUTzZxYPrjPZ9g93ftocw'
        'eJFly4ySfp8ZOLrBpBhMSsynkNZEsqY3qQjXRH9N9E8hmSIx9b6pWE3RN6lR6kNKCSnVQ0pIW8I30O6tFklbonGUk7Zp1WRKk+mr'
        '06pHce9lSoysEsV1U/+L8UoLSPv+uc0iXntUm5pK7YnDbZ2ID0lFfIg6w2qF1QqrFVYrrFZYrUZarTCImIoXZCpa7VVSXVZjO3xZ'
        '/XCr/M1e+XHnuvrnIv1U4ZX1dc6llEvLbqNU447yxrVM9Pq2Szdcirm1au020Q02wcK+zOHVMy4lXLopTA6S97ObirnYZS4OYg6v'
        'brtkurQgTB4Y3lAWBnWpL/OM6m/CEXKEHCFHyNG7kCPHpaRLS8Lk7ZY3yKWRmGdUfxOObJ95qx07M2+NxDyj+hkdmV118/wnQ8Bc'
        '7jKXR2IOr851fVeKi5lc13eD4mLmSpe5cgpzkPpJR5ZLqy7Fhamu7iMwh1dHHaGO9LnU2VCs0IYyDHN4ddvfIlfaXUr5VdO/jvoy'
        'B6m/xTo6N0c4nOAAiRwhR8gRcoSLGA6QuIjhIoY6wkUMFzFcxHA4QY6QI+QIOUKOkCPkCDlCjpAj5Oit5Khzkzqk7k1KvTW8/Jv8'
        'x7j7la8rnZeGf6Xp5wod/LN5LG/G6w7RcV5AnoG8qvQl8s6yntMl8qqyblOteizPIeuWL2JSWOSzqCtxhOTQwfVjeWFZT+ptYdAo'
        '6STWCwyMvZeKHiZxLxMiSghddSXh7bOk+3tHGu4wkBfydZOePcBQjm8o5blsXX8u+9HvPIUnre0nT+jvGfpFXsk2Z8vPNxuzRM2r'
        '5Vq1cZXBrACRLAjgYmnGBXAtNGMCuFKac6I1p5PnBMzpZKV+TcA1BoZoGQymRTLtSxgYuvrJbgyjFRUQ1SWIC3FdhLiUnQsC5iWK'
        'eR+wpB+oVXXRKGw1QmpgwoDZSqQyrkY4DJitRDPCnvEBS/oBZivRtLCn9VyFAbOVCDkalCNVX2o+hwGzlSgm7Jhen2HAbCUaLUfj'
        'Alg/ERfiwn6H/Q45wn6H9RNxIS7EhbgQ18WMK14+pIb+d/jPPqXWxHv27tPHjx7u0a8Vou+j2f2DaM9vo+SDeJQiBcasHwk+o9la'
        'VT6lNVJgHBlACz5hBEZg5B0yosDpa0qgGRgKcNiiLu/lhz+H04IXeIEXeIEXeBmXFxwRYARGYAQnY3iBF3iBF3iBFxwRYARGYGTc'
        'J2MMLozACIyMb02JZtnWy1RbOeL/I/l/WTL8bA=='
    ),
    'mus_dracula_tame_impala.mid': (
        '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'
    ),
    'mus_lovesong_the_cure.mid': (
        'eNrtVj1v01AUPWlL2xGJBYklLFWKFBFCimXZsl4VWY4i6gYIiNEDSJVQlagSUsc6L6His2k+/gBMbHwuTFDoxMQfQAUmZhYQQ7jX'
        'dhM3LZVCBaKRJ5937n3n3vuu/XznigvXAIwjhonY1lxx6QatTqEzeuz8/BXz0rxtxRPFnBnPXr5oTqNzYXT8zgl0ro6NjRyfROc0'
        '/B0TP2jHpH1zcfH6UvwMXifxpIR+77plQ9hQ7TWsWIAAVHw9MOt+GkyCKN3GjH03vkKUDszALTNr2EjbbplZA0gza9jSWaFFXWWD'
        'uhe1LZhh3hfM/I5UeIviWX2e3RQbqSAsmVIcQ2cz7alrbNCY6kZT2KYgqmPI6/jp+IrdhH2prg4vt9MW/Vbp7GtGv3QQU0Yx/1rM'
        '79F9FNVxqOuwPMFk8PqSYBKhAeBBaABI400KT0t0h60LAV1Ix/VT4KUh3LLrx+alCKyi3yqdfc3ol1bZpAbb/lFMRcALq/C3LIe9'
        'Wi2oVvPGrm9Rc4e2uXJz2MuNYkYf67B8rBtYtwSSYg2utfOvPLIV+iufxUYSz0qQH482THu5YgINi560p5Gjn3wlFwYWAzaZDMww'
        's9uUZZAlIOxaoSI8QIxArTCMoaTT4PGoQp1p6DQPVXTID9EhHjhUcJb3+9/P6itG29NnZff0GXsUes8zeDuL5yXcvpdqWkW3LMl/'
        'TyAdD2QZUIZNnU162BQ4u+VmjikqvimYEkwdUDvHTI6F8kzlicozlWcqyyjrCewGgWSXMRmYHqgVAuAxJGSwt9FLIEwFpYAY2meE'
        'sxwIaCxIV1FTYUbhGCpTao8KtephqFUzeBfDixJuvXdas7SlOgu0OK0qpdXiRKtGj5FOi3WrKh7H/yP3WoHQMgG0NHpqkF8OcTW9'
        'Th35HOrUOWyexMsS0E4srIpagprcTi+45VqaqBSDFIEpBlNYQ3uavaZ3eGUYZDwFAgn2irQirR1a7mp0YANp0dwRHVik9SdafNP/'
        'AgWz/bQ='
    ),
    'mus_friday_im_in_love.mid': (
        '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'
    ),
    'mus_boys_dont_cry.mid': (
        'eNrtWk1vG1UUvSVpYIEEQiyK2AxSZEIky7VVWbEsW1PXlhKUTkM6SFRi4UAjEpXKlutWsOvYiqKooIR0xYZ/UKl8LILEgo8NP4Ed'
        'iDUL/oE59/nF88b2TMdx7SblrnLmvPPuO+/e+57Hiq+6WzeJaI7O0dy5v666jVt4ukidmTdK125ct8rXnLdd68r6DWvBXa5YV95f'
        'r7xDnfdmzh/9QZ0PZmdfuPASdVLUnXf+T8x73VqvfbTZaFrXb283t6xP7m43Nxr082V6XKO+mT/RQcFtV+8XiIFXN4FXPygyKoKy'
        'WWTTqGrb3VnTAEM2i0qMSqDKLCoDVBhUTFByW7bS2Ax4fpFBkc6e233Cao96Trx/LEn45N0e9bLsPbYGySMpgrj13SKisWy7ai6r'
        'Fokp6vcGkeENoOsNoq6lz9RIBX/jXSP+NT9/H9f8bOPz5hb9kqRvca1/VXAo51DS2ScPyhxREmTRobxDKSYRJ0+UAmk7BHGaSawC'
        'cRpkySGIM86u7cEDxBmDbJnk8XSQ/vTjhUD6Cx1b8uqGpbFIrx4tbVeHbB5K39NYJJaPlGL5wTRD6edpLBLLR0qx/GBBoRws6Jik'
        '9IP0g/SD9MOE+iFQpYmWPlCQiVY5kPuJFhTk6LXDSpHSQFCp09mo0/T2NP067azF3VPg3olPPo+tJ2UaY0vytiJvK/L2Kv0gb6/y'
        '9ip1mnydyg7BwSUmy0RwcMkgMT2SxEpxpSFkxSHYyvLyFSLYyhoklJEklo8rDSGf8e5XfE8rPU/xyVUVU5GrKuZo5Iqf+5XTkpFn'
        '3A//m3Mn17N8jEqdnn6d5GuKfE2Rr63SD9IP0g/SD9IPo/aD+bui3u+Q5t6lzsxrgV+b3qt9vPEp/XqZvquR9y8d5tx2tYVpAF5d'
        'gTyDPBJzyD/9ahX8sXb1MMsIX3iOAVRLrFryVSYVrkKsJUaGatf2TfRshbsBlWXqZG521kwVDYi+fNWIEGrLYAYsDJ1nMC07BCy5'
        '+4T5O2sndpBhKjOOA50eP2SOqRx9cQGDrS01qFWqDrs2ZN9wCHg3NsEhALK0TwMFNGuU51j5YBtCne8rN0TZoSL+3V+rEOiJ8AZA'
        'o2n90GWGBA1XqcYMj6XdmJUY0mlFl9RhwLFW+bT5GSqbn+mw5JKaXVIHvDuKRz2KyVk9OUsHanJeD+d1sJwONny2Gi3yaHd2QQ8X'
        '9Gz/mfof4ayonRVZHYi2d5HHC9xUpZ78aT2W+RErlbuPRup75yNYxZBS67aLKdINbJy9sB5j8MACwEUXenif2Ij9h6L/wiP/Eu3F'
        'Nq5VZYDMI6FOJwqjzy7uGB3pER0f8V5wDKYZpY1PlDd/xyfKi+XG3du3tpv0Y41+sL9OLLfsvQTRELCYoPlVr763SDSvHruY+cRy'
        'Fyf6eNFH6CXVkmpJtaRO9KKXq0BSJ6kWvZRSUi160Yte9KIXvehFL3p51ZRUS6ol1ZLqYaD3/7xX/qbOzMvlzcb2vc2bVmnjzh36'
        '7S36vkb0MPlhu9pO0gPrYYpRilGaUZpRhlGG2lWglg1EGARIA6QYpFQIr44QEcCrm5RakOeDSUUBTDMo5Y7XB5OOAphmUGorBP9g'
        'Mk8Cssfnfo/adcytabMxd6Q9xtyIOlqD/qE2KC06q75Hi30i38FIuuCDYJI5OT2+5Z6Se0ruqdF9LzBYUABDBoC6nzLAIk9bVACM'
        'ATCtnzLAiVcLjRgJtMfp7nEq+ZdjMm3f8vEie5Q9nrbXBHzT/w+y5yQv'
    ),
    'mus_rose_parade.mid': (
        'eNrtms1q20AQgMdJSPoIhV50rGvjGITwyix2TWxIIFbaxIceU9JDoZSYQiHHuD724LxAKIU+QO+59FH6Bn0Ed/+0u5ZGie26CSZz'
        'W33anR3N7MxokPqD9+8AYBtKsFH63R98+iCuPsN089nx0UkveNU57nR7wfPe4eHB0WAQnPQPBvtlmL7e3PkewPTN1s7G0ydf/rwU'
        'oy0xmlh0A1k0/pFDo+t0IUx3QW/+4pvYfPvt2dn5xyH8KsHPc8hsB1fdBNoJhMloeNkFaAOEAFd7Du5ZyBNgCdQk5AAMoCZgK4Gm'
        'gS2ApoSjIUYL1ncSiBMoS9gBiAHKcj1Ou0pA1agqBFSFgGoyPr2UA/RuCi/uYGqZuZk3x/+7GyZQN0qLy7pV8BY5wjbc3BW24fru'
        '/XlRa1x2GpcFbMvLtlJOq5USIaUpR021s/AUtypUnQrysZRSyitapyJm7cDNekeYHDCfNOSg4ZNIDiKfhOZRcLVQ+MAxI2BkXCBg'
        'VBwz6WGJ3GGJ8JijOLrFiaice/QsQtXU2HiWKydG+HryLHmWPLu2nmXyIbSRmHoIH17cwVLzztiWOZuw/BxlYWteV1Iz3BZWbgRq'
        'e7jyOievyHFFG1yb2g3yLxVC14rRtaImyNNQN9O4PENCEEIBh9qdoVMnxI+DgZbgCzWsO1g35yBLYQGYxqs4DfkgRqN9SZg/KmZO'
        '2lR4c4vCKDTuaSmDVFYCC3xRHJlpY+OpRqmfUv9j8+z8kW8tbPOtJTYVZ5uuomacu2rFbRVCZz4Kz81kbc/Otnq0bfXw2lFdA0Kv'
        'Krh6uWjdzTS3aMnKQIopiimKqdXGFL3m0msuveZS4qbEvWaJe5nQXNqy/+TZ+ZWKzfbCIbHdPnY6xZ5O5hMLejc0kkMtNjUes8c3'
        'e9AnlKMoR1GOooaNYopiiho2atioYaPETYl7LRI3+sUml2eROczMYXqObSkEbxi+QCqfP4M/cDunP8fXXEO0inYOFcpdOzfj9rxO'
        'aBenLt2vYrH7wBYX7YiExNfA/lU2PrWp2f1dli6ZePl6ugt/Aa2Kaxk='
    ),
    'mus_shadowplay.mid': (
        'eNrtmk1PE0EYxx8E0aNHiZdqSK0k0rppQqCkWQgkoLCgEJVbSTxAiGlDMGk8uVTSIGqtBxO/hXrSxIP6AfwMXjxr/AJ1npl9ne4C'
        '8lJb+J/4z/Myz/Q3szM7tLOLKw+IqJe66GzXj9nF9TXRylCju29hamxi7t78zNhSInVzbikxMX13emF6zrpGjdvdvc8uUeN+T8+Z'
        'i+epkSaVd8UUeefuLK9uLCdu0JfL9K5IevCrzEql8CRDLOxSq4TBRQ0hUixSUgjXfxOAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiA'
        'AAinEILBwiC7FNG14wtUHWQxiInH6gcEQAAEQAAEQAAEQAAEQACEzoFQIx6G9zuSvl/+70gM+nqd3hdp8yXVTYtyFmWtqmmbRDmi'
        'LG3Ne1a75Fn90EohwhgZuTW/V/qQRRnOHeIfyJyI5rBFBjeHiYzmZjRul6BGqkYgFST1xjx1FEIrwy7VU9wQz3WESFskdZqofZtY'
        'xVQ1/2F/3P+eC7K8P+SsnQQ/LPU8h+blE6QeH2ERuJVF0MzJHoUY9mN2EvVJVpPCNM5iXNZRmH3hda3nv7gQWVZatjNN4XK4zlC8'
        '8GYxwmJEllOfvoUuseNIwrzAHFHtpFGLwcpjNEufT98T0hEHAs4WzC/mt63mF9ePaAg1PsxplHsRVnHIj6qORGiek1VoPpy/uRLx'
        '4lYO2fT3i12v1JoxLrfFZV0uoqzPxTWWQ6ziUtV7k5YaMkYOWZJXn9YnL43lkC0uVTW11IMb9TVjVwl31vg7a5tfXrHp8aZ3qDuV'
        'zBdBuXCQ/gofsByiWKUQLOYJp8d2vq3IOwrfscSglRCfTAkRFLJ06KD1K2OgRsyqEDWag5pFnoW2UJotzmIK7P/qXypBoZ8RgRJO'
        '+i49H5UramAtFf1K3BqNoSI2CTfcbIfxukJuWjVs2vyK5n3tQ4/9r32y9C1DH4r09E/itWlSyqwUNk0+6OzfFDZsPTfDho96xnfN'
        '8FNr+yO4usYjmFh/9HBtdYM+FYneDiTt0vaAFGXtb6yDXN9xuFH1+LoFW8wo2GJGURUzeqBu+2eEu1LY7lfu5JRqJlUTXnjhhRde'
        'eOGF1/NKS5n9STekzO6IvzJwj6hj6RFcwRXefXkx7cAADMAADCfZa5d870HO/qOMAkRABER44cVDAoh4ArBosGiwaLBdtxvEGjkD'
        'aqTpL/SJu8E='
    ),
    'mus_new_dawn_fades.mid': (
        'eNrtWk9vG1UQ/5WWP0L9AAiplV2tFuPIclgtiVbemI2dhzfZ1ClyReFEhIjkqkKJSpGWW9ZRFUU9EHNBXPgMwA2JA3DkI3DiyLcI'
        'M8+73l3bcdMSaOzMaeb93sy834znvX1r+/bd7mcAXsEVvHzlr9t3Hz6gkY2Tqzfa6l5hbfVeu/D+6prqFEobWx8X1tY/XO+sb7Xf'
        'xskHV6+/C5x8dO3aS2+8hpMqBr6vv0W+r965/8WjncI7+LWCH3YxYvwnjkudQ2+/BByXOwfb+2VSFlhZIKXSeXxnv0JKlZGqRkip'
        'aJto78w2mcgxUmKlhEPvxS+vNaTK0DozFcYzBJQnA/MWxWbFzipLHGUpPxXGMwQsTQbmK0rvbxx7AWoB7OBJYd8DarxDCVSoKdiK'
        'AqZgPYATwGLLOuAAFoMKjoLFlinoBlgOsMiWLrAMLDKosKywyJYp6PDSqLClo1fhTnd4aVTYMgVnjWeOUkvBY2M6G1qAdwbyOZ4b'
        'Cg0mT+4bQGMAElKPMyKkns8oR97Xqy+yu69XXxys7sZpEuLm08xlpBRWOE1yV8DKAFzR9dS5r2ieDJaCZEMmSjlI9mo6FW/NINmr'
        '48C8RbGDZEMmiu5Oa+JUlZUqH+YWa5ONlgK9gclofC5jRIvwtm8w0sgqXtyfx7WAHjg1jdCUJ8b/xtgLaI8MvHpdbdxshPtNlgyw'
        'oghQLDmKQkhHQ8hnwnGLLVrjFuxL4ZvP6dMIBudDigxJetSmeTnT7P2vwcrwunj9ZnpdtPHbKn7cRe8P9Pnzi8iw36KYEa3f5482'
        'olX6TZ6iVfrMJCImfd6CEW3Bfp2Vet6GEKURUpo6Duo8q4/jaK/v8oQ70Xl8KkbIrcaPABrU9LmamuonC+mDh8WEEGTgxgaM1+Ig'
        'EyxbAbw4e+8iFmCU+JRUJGlJWpK+DEkfbPdbPho+PP9JgdNscKaEbvhQPuqM0vVYMVFCfR9NHy6jdOttcihCFbvDYVTpQjn/WVx5'
        '1MhenN+kG+04p6HiteNub9AdLT81waY91za/ZCqld5hzSpXJrZ5VzuaV/0inekmcfDcPWnn4lnDjq/QtwcLvRfy0i+/xTal7sN2j'
        'd3hSor1YCUfk2MQplkWSRZJm9/GdnqmVcET2urFCISZZJCEMNjBOUcIzyqc4FNmAFyt+Go7IUydG5E4iE4edcKKUKkuVpcpSZamy'
        'VFmqLFWWKkuVpcpSZanyzFR5geRCRpZJljPSJmlnpEXSykgptrS0VFkODjk4pKWlylJlqbIcz1LsZy72oRdXLK66yYp5XjWjEGes'
        'xGlAkRmeR6riP2P+n+T9rR1qBCvzA+x73/IPsGsPv/z8wf1H+HkX+K58E4YbHlE4Q4+0mpH5WZiOHpnTbKaMniX6ZM/zii7chbtw'
        'f97oph8emVq6seRxZEt5hftMt3W2nZNxtCflFe5z0dYse92ZKevUOcngcmdgOmTgxiF1mzvuyKWEpSunuHC/sNzfhLE8Hv1WLE2Y'
        'PoxNaXLhLtyFu3CfD+5ycxHuc8o9vbkYm7P//iktIe08kDA9GGtyZgv32eaurx6Rne3j3HfeofSzcJ/jQ9uSQ1u4y6EtdRXuL4r7'
        'LTqT05GZvDDGsgxzC0ZHDm3hLk0uTS7cL3ST6wt2mGnj9PKdv4SP28jXgMJ9Rlpan9Njfw7k3+WN4Qkt/66SDGYpA2l0aRPJYK5/'
        'jJemkQyk7aVpJINLmYG8+Qn3i8+d/yZm8ONloGTfOngcDnFjs9c9Sj3YMNrLWGKaZRKSPJ5i+b/GPPRYOaniH1A88T8='
    ),
    'mus_disorder.mid': (
        'eNrtml1oW2UYx5/ada3rEEXQUXU5btlJP2ZbUg/BGNJ2ZtjIlsY2jOmFJNuqK3VNmqTQoUhPYygTdWsvRIVduIF36zpvnCgyi8Jg'
        'l5vghYhMBb1yIDhlSnzfJ4fT03y0zUe1rf+r//885znv+/ze5+T0PeUcDB0/RkRbqYbqar4/GIqPENXcokztgz7/YP+Ab/+A0vxM'
        '/3OKz3/IP+jvD7RQ5tnauiMXKHN4y5a7djSc/mNCBhIPsLwyxpL6ieXNJMvZmywfLrBc/Jzl8jcs146w3Pia5buXWH7ewXLnWylb'
        '626x3KuyNE2ydJxlcR9l2R9gCUZYXvyLJT7N8tqTLG88xHLuBZa5L1k+Pcxy9WGWmy6WX2dY/rZJqd/Gxdc77mHRJlh8O1kGiWXs'
        'VRadZ6g/c4flA4Vlwc1y/XGWH0+y/N4opaHpEZa951i6eZSGgTmWt0dYLttZ/rwm5W7HFZaYh+V8E8tvb0nZtreVJX2b5avnpTS2'
        'Mnvj2DzLDzekbNe46u0fa1J2vj5JmQ7K9l35RfT9vuBQciiu9EWjI0rzvkgi0UJXHqX5KOU0/jM603U8FZ7sImn0WOmmTV7exkZE'
        '2opEcs0umbOLjYiUbMqbFKQgBSlIQQrSdUvqlMZZMAJkIFcF2SGNQxhVGlUYuzR2YWxyZBvYcavj0Q1SkIIUf3yBDGRsM8CORzdI'
        'QQpSkIJ0I5LapLGtH1Meu7l0u6XZzbsLYeTuYo80e3jjIYxq3YGYe5J8U3GOmMuxxlOgjCrmcIX44GHTfPBgkx+67BuKj0bix5TB'
        '8ROjQ3Gl+enx4WQk3kJfPEaXoqTPKzPuQCqsu4lmeqXpFWbZiB7LjaSDHNFkRLNetWzEGMcSMcZBPagH9RTKEacKX+UJTPfoHkqF'
        'RUjMmg0J41lMEueMkB4TTsQ8S7PM64xTazq4VxqvMN3SdFuNV2JmTwnTLUe0hPKzjYGWGdEYyFxcMaK5hBZjLHy+2VDF4seDelAP'
        'Hr54+P4nD19yB0gzMsWia5ZgNmc1wQovX/2YVZ7IszimZ2kwm+kpN3NVQW+AXEZQdNdlZroWJ3JZMrPBnExzTNdKY+Zmou/oO/qO'
        'vqPv6Dv6jr6j7+g7+o6+o+/oO/qOvqPv6Pt66rv5mUDDScrU3u+PjCpPjceTwwml+VD0aOTlRAst9NJHUZq6GJ7tCumxqS6i0owz'
        'lApPOdmIiLNgRJNGsxrzVKc0ncK0y6va6d3OMutYq4LeV6pdhx4rcUHaZaidQ7nGzDaNOZClkKXzp4OlzJ+a3EQdKW0hRFI17szK'
        'pn2nZ7P0X8yLJ4J11tIaUY11yMc3jBZKBzF98ennYrMeGRJbigLGK42Xjcj20mx4vWSLZTMc/TtmuoeNWxq3ZQPyxG2xAan3xcdP'
        'jAwn6ZMo0XutKtkP6LFTrUT2godqX/ZQ5cOsL/Wq3EPMWHBGtW/ilFpUU+H8cRZLrQZCmeDFSqpguTYuV7E0dAqdQqfABS5wgQtc'
        '4AIXuMBV6VXy3dAIZ18T9dgK75FoFbjAhZ8WbkFwgQtc4AIXuMAFLnCBC1x49UKrwPX/+Wmlg2gFuMAFLnCBC1zgAhe4wAUucIFr'
        'BS78UwYdA1mVyTb0f2TQhbJqTYVLWkCkI/3AdM+SOy3n8DQZh5kO+gcWqlbr'
    ),
    'mus_love_will_tear_us_apart.mid': (
        'eNrtm01PE2EQxwdpqgdvXjx4qAkhCGlqmgbTbNosLUQxdVGoqLcSNUJQuymQ9Mh2NcSDqZYTB/0EHnw5mXDw5eJX8MZH8Oitzizt'
        '9rGt7Qpt2ML/Nv3tzOx/9pmd5ykNN7LLD4goSEMUHNq7kS2s8qcEVYdHM3OLM6E7s5lMKDszNR+6vRCaujk1nw2NXZ+7F5qeXZxd'
        'mJ0zLlH11nDwxwWq3g0ETp0/Q9UI7ScJDnGS4GL+/tLjNfoyRe/z1ORr/aJXyayd20wSvdKzW/qm7hhMxEgJSZFlMrJMB7neKTFS'
        'bGjipIlTUpzkWlxQnOxcS3JGvs9eJs4uOdnQVe+0+KRV0pq6llEV17eMu1i8wV08vHqDvHoDkdHdCM4VeCM4e3VjZX2pEEo/frj0'
        'lL6G6UOe3tLrhEFxg2LGlm4liDgqRs9vurToQurIlGjLdKlltnH1Du1cu6QKJV/fqduz0w1K1IJ12fB9BIsemQ+lt4W8kj337A5T'
        'BiUNikpOfnf5zYwyTNcge6Zd2NZTb3jqnT01gyYNigjUiCaJIgrk8Fbo3bM7PNqHjCU+MUtcJheW3jhYa9xKc321RoIm2Naz6JG1'
        'zfgXTDk6J2sLl3CengvZsxV69+wOe9QhRY+se9M4Gx6F5Tb7O15YgezZCr17doOld4224bNJvW34ZPO/W5wSzUeDHnWyDyUpL6yS'
        'tM+Tund36vbsZhrBMz6DRY/Mh9LbQh7TdfjsJV5DSMKwOuDXK8xkzORjC4/xttf4y1tgj6rDpxfWCytPH63Rt8v0MU+/qaLrZSrx'
        'i1BJ6XauxGf4Slq3zFJaJboQ8UkK4a+BFU2i+HxdiYsRp97liYoRVUlSjOThfa6IcUV1Pjm1H4fng2b1Ve0+y+POufMy5wKppbU1'
        '+n6RPuWJtieWLdOegAHjYEZs2c7ZMcdgEutMxsUYV8Nd4jpHhfD7vh0RI+IYfCnyD9JshMUn7BhMwv8gzQaqQBWoAlWgClSBKlAF'
        'qjhYFRPic5hTJcIHMhzvIKpAFagCVaCKk33a8bKNIupoomprapmeVtdP3jA6GWPLZbLHlN85tJ/ye+50YePJ6so6fc7TLu2Mj9Lo'
        'NRrJ2LkXPDlGiUZIoGXKxx3nEtveuGUOZjqqB9Sh4uqRjmSKQvbzOWZDjhNUrAUol5m6eQ6ao3EZCvqooNmpb7VgRQa1J+oY3YBu'
        'QDegG7BfQAEmBBRgQkABJgQUYEJAASYEFGBCQAEmBLoBEwI9cbx7AusJBVAABXiOOEViLXBiwIpgQmAtMCHQE5gQ6AZ0A7oB3YD9'
        'AgowIaDA5xMCaqAGaqAGaqAGaqDmiNTU//20TALdf2GtRugPak+RwA=='
    ),
}


def die(message):
    raise SystemExit("ERRO: " + message)


def find_root():
    script = Path(__file__).resolve()
    candidates = [
        Path.cwd().resolve(),
        script.parent.resolve(),
        script.parent.parent.resolve(),
    ]
    for candidate in candidates:
        if (candidate / "src/radio.c").exists() and (candidate / "include/constants/songs.h").exists():
            return candidate
    die(
        "nao achei a raiz do pokeemerald-expansion. "
        "Deixe este script em PHYTON/ ou na raiz do projeto."
    )


ROOT = find_root()
MID_DST = ROOT / "sound/songs/midi"
MIDI_CFG = MID_DST / "midi.cfg"
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
RADIO_C = ROOT / "src/radio.c"
BACKUP_DIR = ROOT / "PHYTON" / "_backups" / "indie_classics_batch_v1"


def backup(path):
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    target = BACKUP_DIR / path.name
    if not target.exists():
        shutil.copyfile(path, target)
        target.touch()
        print("[BACKUP]", target)


def write_if_changed(path, text):
    current = path.read_text(encoding="utf-8")
    if current == text:
        print("[OK] sem mudanca:", path)
        return
    backup(path)
    path.write_text(text, encoding="utf-8")
    path.touch()
    print("[PATCH]", path)


def parse_defines(text):
    return {
        m.group(1): m.group(2)
        for m in re.finditer(r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M)
    }


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
    end_match = re.search(r"^\s*#define\s+END_MUS\s+([^\s/]+).*$", text, re.M)
    if not end_match:
        die("nao achei #define END_MUS em include/constants/songs.h")

    old_end_token = end_match.group(1)
    defines = parse_defines(text)
    old_end_value = resolve_value(old_end_token, defines)

    if old_end_value is None:
        values = []
        for name, raw in defines.items():
            if name.startswith("MUS_"):
                value = resolve_value(raw, defines)
                if value is not None and value < 0x7FFF:
                    values.append(value)
        if not values:
            die("nao consegui resolver o ID atual de END_MUS")
        old_end_value = max(values)

    next_id = old_end_value + 1
    new_lines = []
    assigned = {}

    for macro, slug, title, volume in SONGS:
        existing = resolve_value(macro, defines)
        if existing is None:
            assigned[macro] = next_id
            new_lines.append(f"#define {macro:<38} {next_id}\n")
            defines[macro] = str(next_id)
            next_id += 1
        else:
            assigned[macro] = existing

    if new_lines:
        text = text[:end_match.start()] + "".join(new_lines) + text[end_match.start():]
        newest = max(SONGS, key=lambda item: assigned[item[0]])[0]
        if assigned[newest] > old_end_value:
            text = re.sub(
                r"^\s*#define\s+END_MUS\s+[^\n]+$",
                f"#define END_MUS {newest}",
                text,
                count=1,
                flags=re.M,
            )

    return text, old_end_token, assigned


def patch_song_table(text, old_end_token):
    missing = [
        slug
        for macro, slug, title, volume in SONGS
        if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)
    ]
    if not missing:
        return text

    old_song = old_end_token.lower()
    match = re.search(
        rf"^(\s*song\s+{re.escape(old_song)})(\s*,[^\n]+)$",
        text,
        re.M,
    )
    if match:
        suffix = match.group(2)
        insert_at = match.end()
    else:
        candidates = list(
            re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M)
        )
        if not candidates:
            die("nao achei linhas song mus_... em sound/song_table.inc")
        match = candidates[-1]
        suffix_match = re.search(r"(\s*,[^\n]+)$", match.group(0))
        suffix = suffix_match.group(1) if suffix_match else ", 0, 0"
        insert_at = match.end()
        print("[AVISO] END_MUS nao localizado na song table; usando a ultima musica")

    additions = "".join(f"\n\tsong mus_{slug}{suffix}" for slug in missing)
    return text[:insert_at] + additions + text[insert_at:]


def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"

    for macro, slug, title, volume in SONGS:
        filename = f"mus_{slug}.mid"
        pattern = rf"^\s*{re.escape(filename)}\s*:"
        line = f"{filename + ':':<44} -E -R50 -G_littleroot_test -V{volume:03d}"
        if re.search(pattern, text, re.M):
            text = re.sub(
                rf"^\s*{re.escape(filename)}\s*:.*$",
                line,
                text,
                count=1,
                flags=re.M,
            )
        else:
            text += line + "\n"

    return text


def patch_macro_list(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado em src/radio.c")

    block = text[start:end]
    lines = block.splitlines()

    missing = [
        macro
        for macro, slug, title, volume in SONGS
        if not any(f"X({macro})" in line for line in lines)
    ]
    if not missing:
        return text

    anchor = next(
        (
            i
            for i, line in enumerate(lines)
            if "X(MUS_UMINEKO_WORLDEND_DOMINATOR)" in line
        ),
        None,
    )

    x_indexes = [
        i for i, line in enumerate(lines)
        if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)
    ]
    if not x_indexes:
        die("lista X(MUS_...) vazia")

    position = anchor + 1 if anchor is not None else x_indexes[-1] + 1
    for offset, macro in enumerate(missing):
        lines.insert(position + offset, f"    X({macro})")

    x_indexes = [
        i for i, line in enumerate(lines)
        if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)
    ]
    for number, index in enumerate(x_indexes):
        base = re.sub(r"\s*\\\s*$", "", lines[index]).rstrip()
        lines[index] = base + (" \\" if number < len(x_indexes) - 1 else "")

    new_block = "\n".join(lines)
    if block.endswith("\n"):
        new_block += "\n"
    return text[:start] + new_block + text[end:]


def add_indie_station_entries(text):
    pattern = r"(static const u16 sStation_IndieRock\[\] = \{)(.*?)(\n\};)"
    match = re.search(pattern, text, re.S)
    if not match:
        die("nao achei sStation_IndieRock[] em src/radio.c")

    body = match.group(2)
    missing = [
        macro
        for macro, slug, title, volume in SONGS
        if not re.search(rf"\b{re.escape(macro)}\s*,", body)
    ]
    if not missing:
        return text

    pos = body.rfind("    STATION_END")
    if pos < 0:
        die("STATION_END nao encontrado em sStation_IndieRock")

    addition = (
        "\n    // Indie classics batch - Mac DeMarco / Tame Impala / Cure / Elliott Smith / Joy Division\n"
        + "".join(f"    {macro},\n" for macro in missing)
    )

    body = body[:pos] + addition + body[pos:]
    return text[:match.start(2)] + body + text[match.end(2):]


INDIE_NAME_CONSTANTS = r"""static const u8 sIndieName_FreakingOutNeighborhood[] = _("FREAKING OUT THE NEIGHBORHOOD (MAC DEMARCO)");
static const u8 sIndieName_DraculaTameImpala[]       = _("DRACULA (TAME IMPALA)");
static const u8 sIndieName_LovesongCure[]             = _("LOVESONG (THE CURE)");
static const u8 sIndieName_FridayImInLove[]           = _("FRIDAY I'M IN LOVE (THE CURE)");
static const u8 sIndieName_BoysDontCry[]              = _("BOYS DON'T CRY (THE CURE)");
static const u8 sIndieName_RoseParade[]               = _("ROSE PARADE (ELLIOTT SMITH)");
static const u8 sIndieName_Shadowplay[]               = _("SHADOWPLAY (JOY DIVISION)");
static const u8 sIndieName_NewDawnFades[]             = _("NEW DAWN FADES (JOY DIVISION)");
static const u8 sIndieName_Disorder[]                 = _("DISORDER (JOY DIVISION)");
static const u8 sIndieName_LoveWillTearUsApart[]      = _("LOVE WILL TEAR US APART (JOY DIVISION)");"""

INDIE_CASES = r"""    case MUS_FREAKING_OUT_THE_NEIGHBORHOOD:
        return sIndieName_FreakingOutNeighborhood;
    case MUS_DRACULA_TAME_IMPALA:
        return sIndieName_DraculaTameImpala;
    case MUS_LOVESONG_THE_CURE:
        return sIndieName_LovesongCure;
    case MUS_FRIDAY_IM_IN_LOVE:
        return sIndieName_FridayImInLove;
    case MUS_BOYS_DONT_CRY:
        return sIndieName_BoysDontCry;
    case MUS_ROSE_PARADE:
        return sIndieName_RoseParade;
    case MUS_SHADOWPLAY:
        return sIndieName_Shadowplay;
    case MUS_NEW_DAWN_FADES:
        return sIndieName_NewDawnFades;
    case MUS_DISORDER:
        return sIndieName_Disorder;
    case MUS_LOVE_WILL_TEAR_US_APART:
        return sIndieName_LoveWillTearUsApart;"""


def find_function_block(text, signature):
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


def patch_indie_display_names(text):
    signature = "static const u8 *Radio_GetIndieDisplayName(u16 songId)"

    if "sIndieName_FreakingOutNeighborhood" not in text:
        pos = text.find(signature)
        if pos < 0:
            die("Radio_GetIndieDisplayName nao encontrado")
        text = text[:pos] + INDIE_NAME_CONSTANTS + "\n\n" + text[pos:]

    block = find_function_block(text, signature)
    if block is None:
        die("nao consegui analisar Radio_GetIndieDisplayName")

    start, brace, end = block
    func = text[start:end]

    missing_cases = [
        macro
        for macro, slug, title, volume in SONGS
        if f"case {macro}:" not in func
    ]
    if not missing_cases:
        return text

    chunks = re.findall(
        r"    case (MUS_[A-Z0-9_]+):\n        return ([A-Za-z0-9_]+);\n",
        INDIE_CASES,
    )
    case_chunks = []
    for macro, ret in chunks:
        if macro in missing_cases:
            case_chunks.append(f"    case {macro}:\n        return {ret};\n")

    default_pos = func.find("    default:")
    if default_pos < 0:
        die("default do Radio_GetIndieDisplayName nao encontrado")

    func = func[:default_pos] + "".join(case_chunks) + func[default_pos:]
    return text[:start] + func + text[end:]


def patch_radio(text):
    text = patch_macro_list(text)
    text = add_indie_station_entries(text)
    text = patch_indie_display_names(text)
    return text


for path in (MIDI_CFG, SONGS_H, SONG_TABLE, RADIO_C):
    if not path.exists():
        die(f"nao achei {path}")

MID_DST.mkdir(parents=True, exist_ok=True)

for macro, slug, title, volume in SONGS:
    filename = f"mus_{slug}.mid"
    try:
        data = zlib.decompress(base64.b64decode(EMBEDDED_MIDIS[filename]))
    except Exception as exc:
        die(f"falha ao extrair {filename}: {exc}")

    destination = MID_DST / filename
    if destination.exists() and destination.read_bytes() == data:
        print("[OK] MIDI ja instalado:", destination)
    else:
        if destination.exists():
            BACKUP_DIR.mkdir(parents=True, exist_ok=True)
            old = BACKUP_DIR / destination.name
            if not old.exists():
                shutil.copyfile(destination, old)
                old.touch()
                print("[BACKUP]", old)
        destination.write_bytes(data)
        destination.touch()
        print("[WRITE]", destination)

songs_patched, old_end_token, assigned = patch_songs_h(
    SONGS_H.read_text(encoding="utf-8")
)
write_if_changed(SONGS_H, songs_patched)
write_if_changed(
    SONG_TABLE,
    patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end_token),
)
write_if_changed(
    MIDI_CFG,
    patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8")),
)
write_if_changed(
    RADIO_C,
    patch_radio(RADIO_C.read_text(encoding="utf-8")),
)

for macro, slug, title, volume in SONGS:
    generated_s = MID_DST / f"mus_{slug}.s"
    if generated_s.exists():
        generated_s.unlink()
        print("[REMOVE]", generated_s)

    build_root = ROOT / "build"
    if build_root.exists():
        for obj in build_root.glob(f"**/sound/songs/midi/mus_{slug}.o"):
            obj.unlink()
            print("[REMOVE]", obj)

print()
print("[OK] RADIO INDIE CLASSICS BATCH instalado")
print("Estacao: INDIE ROCK somente")
print("Voicegroup: _littleroot_test")
print("Backups:", BACKUP_DIR)
print()
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    print(f"  {assigned[macro]:>4}  {macro:<38} {title}")
print()
print("Agora rode:")
print("  make -j9")
