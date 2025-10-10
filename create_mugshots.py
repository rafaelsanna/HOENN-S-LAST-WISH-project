#!/usr/bin/env python3
from PIL import Image
import os

def create_indexed_png(filename, width, height, color_index):
    """Cria uma PNG indexada de 16 cores"""
    
    # Criar imagem no modo Palette (P)
    img = Image.new('P', (width, height), 0)
    
    # Criar paleta de 16 cores (RGB)
    # Cor 0: Transparente/Preto (0,0,0)
    # Cor 1-15: Cores variadas
    palette = [
        0, 0, 0,         # 0: Preto
        255, 255, 255,   # 1: Branco
        255, 200, 0,     # 2: Amarelo
        0, 150, 255,     # 3: Azul
        0, 255, 100,     # 4: Verde
        255, 100, 100,   # 5: Vermelho
        200, 150, 255,   # 6: Roxo
        255, 150, 0,     # 7: Laranja
        150, 150, 150,   # 8: Cinza
        100, 200, 255,   # 9: Azul claro
        255, 200, 200,   # 10: Rosa
        200, 255, 150,   # 11: Verde claro
        255, 255, 150,   # 12: Amarelo claro
        150, 100, 50,    # 13: Marrom
        50, 50, 100,     # 14: Azul escuro
        100, 50, 50,     # 15: Marrom escuro
    ]
    
    # Preencher o resto da paleta com preto (256 - 16 = 240 cores)
    palette.extend([0, 0, 0] * (256 - 16))
    
    # Aplicar a paleta
    img.putpalette(palette)
    
    # Desenhar algo simples
    pixels = img.load()
    for y in range(height):
        for x in range(width):
            # Criar borda
            if x < 5 or x >= width-5 or y < 5 or y >= height-5:
                pixels[x, y] = 1  # Branco
            # Criar centro colorido
            elif 20 <= x < width-20 and 20 <= y < height-20:
                pixels[x, y] = color_index
    
    # Salvar com otimização para 16 cores
    img.save(filename, optimize=True)
    print(f"✓ Criado: {filename} ({width}x{height}, 16 cores)")

# Criar pasta se não existir
os.makedirs('graphics/mugshots', exist_ok=True)

# Criar mugshots (80x72 pixels, múltiplos de 8)
create_indexed_png('graphics/mugshots/jirachi.png', 80, 72, 3)  # Azul
create_indexed_png('graphics/mugshots/celebi.png', 80, 72, 4)   # Verde

print("\n✓ Mugshots placeholder criados com sucesso!")
print("  - jirachi.png: 80x72 pixels, 16 cores (azul)")
print("  - celebi.png: 80x72 pixels, 16 cores (verde)")
