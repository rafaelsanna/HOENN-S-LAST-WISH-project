PASTA PHYTON - scripts auxiliares do Pokemon HLW

IMPORTANTE:
Execute os scripts SEMPRE a partir da raiz do projeto.

CERTO:
  cd ~/pokeemerald-expansion
  python3 PHYTON/install_alguma_coisa.py

EVITE:
  cd ~/pokeemerald-expansion/PHYTON
  python3 install_alguma_coisa.py

Muitos instaladores usam Path.cwd() e esperam encontrar src/, include/,
sound/, graphics/ etc. no diretório atual.
