#!/usr/bin/env python3
from pathlib import Path
import argparse
import subprocess
import sys

parser = argparse.ArgumentParser(
    description="Limpa helpers Python nao rastreados da raiz do repo e arquivos Zone.Identifier."
)
parser.add_argument(
    "--apply",
    action="store_true",
    help="Apaga de verdade. Sem esta flag, apenas mostra o que seria removido."
)
args = parser.parse_args()

repo = Path.cwd()

if not (repo / ".git").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / ".git").exists():
        repo = candidate
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

try:
    result = subprocess.run(
        ["git", "ls-files", "--others", "--exclude-standard", "--", "*.py"],
        cwd=repo,
        text=True,
        capture_output=True,
        check=True,
    )
except subprocess.CalledProcessError as e:
    sys.exit("ERRO executando git ls-files:\n" + e.stderr)

python_candidates = []
for line in result.stdout.splitlines():
    rel = Path(line.strip())
    if not line.strip():
        continue
    if len(rel.parts) != 1:
        continue
    if rel.name == "cleanup_repo_junk.py":
        continue

    path = repo / rel
    if path.is_file() and path.suffix.lower() == ".py":
        python_candidates.append(path)

zone_candidates = []
for path in repo.rglob("*"):
    if path.is_file():
        name = path.name
        if name.endswith(":Zone.Identifier") or name == "Zone.Identifier":
            zone_candidates.append(path)

python_candidates = sorted(set(python_candidates))
zone_candidates = sorted(set(zone_candidates))
all_candidates = python_candidates + zone_candidates

print(f"Repo: {repo}")
print()

print(f"Python .py nao rastreados na RAIZ: {len(python_candidates)}")
for p in python_candidates:
    print("  PY   ", p.relative_to(repo))

print()
print(f"Zone.Identifier encontrados: {len(zone_candidates)}")
for p in zone_candidates:
    print("  ZONE ", p.relative_to(repo))

print()

if not all_candidates:
    print("Nada para limpar.")
    raise SystemExit(0)

if not args.apply:
    print("MODO PREVIEW: nada foi apagado.")
    print()
    print("Se a lista estiver certa, rode:")
    print("  python3 cleanup_repo_junk.py --apply")
    raise SystemExit(0)

deleted = 0
failed = 0

for p in all_candidates:
    try:
        p.unlink()
        deleted += 1
    except Exception as e:
        failed += 1
        print(f"ERRO removendo {p.relative_to(repo)}: {e}")

print()
print(f"Removidos: {deleted}")
if failed:
    print(f"Falharam:  {failed}")
else:
    print("Limpeza concluida.")

print()
print("OBS:")
print("  - arquivos .py rastreados pelo Git foram preservados")
print("  - subpastas como tools/ e scripts/ foram preservadas")
print("  - backups .bak_* NAO foram apagados")
