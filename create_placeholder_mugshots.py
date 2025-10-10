from PIL import Image, ImageDraw
import os
# Criar imagem placeholder para Jirachi (azul)
img_jirachi = Image.new('P', (64, 64))
img_jirachi.putpalette([0,0,0] * 256)  # Palette preta temporária
draw_jirachi = ImageDraw.Draw(img_jirachi)
draw_jirachi.rectangle([10, 10, 54, 54], fill=1)  # Retângulo simples
img_jirachi.save('graphics/mugshots/jirachi.png')

# Criar imagem placeholder para Celebi (verde)  
img_celebi = Image.new('P', (64, 64))
img_celebi.putpalette([0,0,0] * 256)  # Palette preta temporária
draw_celebi = ImageDraw.Draw(img_celebi)
draw_celebi.ellipse([10, 10, 54, 54], fill=1)  # Círculo simples
img_celebi.save('graphics/mugshots/celebi.png')

print("Placeholder mugshots criados!")
