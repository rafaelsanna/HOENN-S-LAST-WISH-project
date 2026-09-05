from pathlib import Path
from PIL import Image

# Pasta dos sprites
BASE_DIR = Path("graphics/text_window")

# Sprite base
SOURCE_FILE = BASE_DIR / "1.png"

# Cor que deve ser preservada exatamente
LOCK_COLOR = (0x21, 0x21, 0x29)  # #212129

# Cores-base dos temas 4..20
# Pode trocar os HEX depois se quiser refinar.
THEME_COLORS = {
    4:  "#ff7ac8",  # rosa
    5:  "#5aa9ff",  # azul
    6:  "#53d6c7",  # teal
    7:  "#e46b6b",  # vermelho
    8:  "#d8b14c",  # dourado
    9:  "#cfe9ff",  # gelo
    10: "#d89037",  # laranja
    11: "#caa8ff",  # lilás
    12: "#d6df57",  # amarelo-esverdeado
    13: "#6eb7ff",  # azul claro
    14: "#d7bf86",  # bege
    15: "#8d6cff",  # roxo
    16: "#58c7ff",  # ciano
    17: "#e4e4e4",  # prata
    18: "#f2d94d",  # amarelo
    19: "#e58cff",  # magenta
    20: "#f09ab1",  # rosa pastel
}

def hex_to_rgb(s):
    s = s.lstrip("#")
    return tuple(int(s[i:i+2], 16) for i in (0, 2, 4))

def luminance(rgb):
    r, g, b = rgb
    return 0.2126 * r + 0.7152 * g + 0.0722 * b

def mix(a, b, t):
    return tuple(round(a[i] * (1 - t) + b[i] * t) for i in range(3))

def lerp(a, b, t):
    return tuple(round(a[i] * (1 - t) + b[i] * t) for i in range(3))

def build_shades(theme_rgb, count):
    """
    Gera uma escadinha de tons do tema, do mais escuro ao mais claro,
    preservando o estilo pixel-art.
    """
    dark_1   = mix(theme_rgb, (0, 0, 0), 0.72)
    dark_2   = mix(theme_rgb, (0, 0, 0), 0.45)
    mid      = mix(theme_rgb, (0, 0, 0), 0.18)
    light_1  = mix(theme_rgb, (255, 255, 255), 0.22)
    light_2  = mix(theme_rgb, (255, 255, 255), 0.42)

    anchors = [dark_1, dark_2, mid, light_1, light_2]

    if count == 1:
        return [mid]

    shades = []
    for i in range(count):
        x = i / (count - 1)
        pos = x * (len(anchors) - 1)
        idx = int(pos)
        frac = pos - idx
        if idx >= len(anchors) - 1:
            shade = anchors[-1]
        else:
            shade = lerp(anchors[idx], anchors[idx + 1], frac)
        shades.append(shade)
    return shades

def main():
    if not SOURCE_FILE.exists():
        raise SystemExit(f"ERRO: arquivo base nao encontrado: {SOURCE_FILE}")

    img = Image.open(SOURCE_FILE).convert("RGBA")
    pixels = img.load()
    w, h = img.size

    # Pega todas as cores opacas do sprite base, exceto o miolo travado
    unique_colors = set()
    for y in range(h):
        for x in range(w):
            r, g, b, a = pixels[x, y]
            if a == 0:
                continue
            rgb = (r, g, b)
            if rgb == LOCK_COLOR:
                continue
            unique_colors.add(rgb)

    if not unique_colors:
        raise SystemExit("ERRO: nao encontrei cores para recolorir.")

    # Ordena do mais escuro ao mais claro
    source_palette = sorted(unique_colors, key=luminance)

    print("Cores-base detectadas no sprite 1:")
    for c in source_palette:
        print(" ", c)

    for index, hex_color in THEME_COLORS.items():
        theme_rgb = hex_to_rgb(hex_color)
        target_palette = build_shades(theme_rgb, len(source_palette))
        remap = dict(zip(source_palette, target_palette))

        out = img.copy()
        out_pixels = out.load()

        for y in range(h):
            for x in range(w):
                r, g, b, a = out_pixels[x, y]
                if a == 0:
                    continue

                rgb = (r, g, b)

                # Preserva exatamente o miolo #212129
                if rgb == LOCK_COLOR:
                    continue

                if rgb in remap:
                    nr, ng, nb = remap[rgb]
                    out_pixels[x, y] = (nr, ng, nb, a)

        out_path = BASE_DIR / f"{index}.png"
        out.save(out_path)
        print(f"OK: gerado {out_path}")

    print("\\nPronto. Os arquivos 4.png ate 20.png foram recriados a partir de 1.png.")

if __name__ == "__main__":
    main()
