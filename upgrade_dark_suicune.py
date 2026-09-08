#!/usr/bin/env python3
"""
Dark Suicune cutscene upgrader for pokeemerald-expansion.

Coloque este arquivo na raiz da repo e rode:

    python3 upgrade_dark_suicune.py

O script:
  - valida a raiz do projeto;
  - cria backup timestampado;
  - instala o C corrigido;
  - instala close_affine.8bpp e close_affine.bin;
  - verifica SHA-256;
  - roda `git diff --check` quando Git estiver disponivel;
  - compila com `make -j8` por padrao.

Opcoes:
    --dry-run
    --no-build
    --jobs N
    --force
    --restore-latest
    --root PATH

E autocontido e nao precisa de internet nem Pillow.
"""

from __future__ import annotations

import argparse
import base64
import datetime as _dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import zlib

UPGRADE_NAME = "dark_suicune_scene_v2"
BACKUP_ROOT = ".dark_suicune_upgrade_backups"

TARGET_C = Path("src/dark_suicune_scene.c")
TARGET_GFX = Path("graphics/dark_suicune/close_affine.8bpp")
TARGET_MAP = Path("graphics/dark_suicune/close_affine.bin")

OLD_C_SHA256 = "f9222cf754bc708613f0667238556e164fe069257c93b1f44dd7f7d5e0538400"
NEW_C_SHA256 = "8e3a5b5761ad727c16020bda8141e4b34aa2c5fbe1ad4b085cec2817cccbc1e4"
NEW_GFX_SHA256 = "69ef6bbe907f1c5fa4af2ea65dfff9a97bd2a5a03cdb43e924c85beebb546d34"
NEW_MAP_SHA256 = "48ca53fafbaba4e10bf6094846d1b8ab36f1aa55cb3f92fb69bc12a4dd58528e"

PAYLOAD_C = (
    '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'
)

PAYLOAD_GFX = (
    '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'
)

PAYLOAD_MAP = (
    'eNpjYBgBgJGJmYWVjZ2Dk4ubh4OXj19AUEgYWV5ElEFMXEJSSlpGVk5eQVFJmUFFFVleTZ1BQ1NLW0dXT3+BgaGRsQmDqRmS'
    'tLmFpRUDg7WNrZ29g6OTswsDg6ubuwdc2tPL28fXj8E/IDAoOCQ0LDwiMio6JjYuHiafsJAhMSk5JTUtPSMzKzsnlyEvv4CB'
    'YVEhTH5xEQNDYnEJQ2lZeUVlVXUNQ20dA0N9wxKY/NLGJjDd3NLa1t7R2QXmdPcsgzugtw9MLe+fMHHS5CkQsanTGEbBKGAA'
    'AB5ZMcM='
)

class UpgradeError(RuntimeError):
    pass

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def sha256_file(path: Path):
    if not path.is_file():
        return None
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def decode_payload(encoded: str) -> bytes:
    return zlib.decompress(base64.b64decode(encoded.encode("ascii")))

def log(msg: str = ""):
    print(msg, flush=True)

def die(msg: str):
    raise UpgradeError(msg)

def validate_root(root: Path):
    required = [root / "Makefile", root / "src", root / "graphics", root / "include"]
    missing = [str(p.relative_to(root)) for p in required if not p.exists()]
    if missing:
        die("Nao parece ser a raiz do pokeemerald-expansion. Faltando: " + ", ".join(missing))
    if not (root / TARGET_C).is_file():
        die(
            f"Arquivo {TARGET_C} nao encontrado. "
            "Este upgrader pressupoe que a cena Dark Suicune ja foi criada."
        )

def atomic_write(path: Path, data: bytes):
    path.parent.mkdir(parents=True, exist_ok=True)
    old_mode = path.stat().st_mode if path.exists() else None
    fd, tmp_name = tempfile.mkstemp(prefix=path.name + ".tmp.", dir=str(path.parent))
    tmp_path = Path(tmp_name)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        if old_mode is not None:
            os.chmod(tmp_path, old_mode)
        os.replace(tmp_path, path)
    finally:
        if tmp_path.exists():
            tmp_path.unlink()

def make_backup(root: Path, paths, dry_run: bool) -> Path:
    stamp = _dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_dir = root / BACKUP_ROOT / stamp
    manifest = {
        "upgrade": UPGRADE_NAME,
        "created_at": _dt.datetime.now().isoformat(timespec="seconds"),
        "files": [],
    }
    for rel in paths:
        src = root / rel
        existed = src.exists()
        manifest["files"].append({
            "path": rel.as_posix(),
            "existed": existed,
            "sha256": sha256_file(src) if existed and src.is_file() else None,
        })
    if dry_run:
        log(f"[dry-run] Criaria backup em: {backup_dir}")
        return backup_dir

    backup_dir.mkdir(parents=True, exist_ok=False)
    for entry in manifest["files"]:
        if not entry["existed"]:
            continue
        rel = Path(entry["path"])
        src = root / rel
        dst = backup_dir / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)

    (backup_dir / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    return backup_dir

def latest_backup(root: Path) -> Path:
    parent = root / BACKUP_ROOT
    if not parent.is_dir():
        die("Nenhum backup deste upgrader foi encontrado.")
    dirs = sorted(
        [p for p in parent.iterdir() if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not dirs:
        die("Nenhum backup valido deste upgrader foi encontrado.")
    return dirs[0]

def restore_backup(root: Path, backup_dir: Path, dry_run: bool):
    manifest = json.loads((backup_dir / "manifest.json").read_text(encoding="utf-8"))
    log(f"Restaurando backup: {backup_dir.relative_to(root)}")
    for entry in manifest.get("files", []):
        rel = Path(entry["path"])
        dst = root / rel
        src = backup_dir / rel
        if entry["existed"]:
            if dry_run:
                log(f"[dry-run] restauraria {rel}")
            else:
                if not src.is_file():
                    die(f"Backup incompleto: {src} nao existe.")
                atomic_write(dst, src.read_bytes())
                log(f"  restaurado: {rel}")
        else:
            if dst.exists():
                if dry_run:
                    log(f"[dry-run] removeria {rel}")
                else:
                    if dst.is_dir():
                        shutil.rmtree(dst)
                    else:
                        dst.unlink()
                    log(f"  removido:   {rel}")
    log("Restore concluido." if not dry_run else "Dry-run do restore concluido.")

def inspect_state(root: Path):
    return (
        sha256_file(root / TARGET_C),
        sha256_file(root / TARGET_GFX),
        sha256_file(root / TARGET_MAP),
    )

def verify_payloads():
    c = decode_payload(PAYLOAD_C)
    gfx = decode_payload(PAYLOAD_GFX)
    amap = decode_payload(PAYLOAD_MAP)
    checks = [
        ("C embutido", sha256_bytes(c), NEW_C_SHA256),
        ("close_affine.8bpp embutido", sha256_bytes(gfx), NEW_GFX_SHA256),
        ("close_affine.bin embutido", sha256_bytes(amap), NEW_MAP_SHA256),
    ]
    for name, got, expected in checks:
        if got != expected:
            die(f"Payload corrompido ({name}): {got} != {expected}")
    return c, gfx, amap

def apply_upgrade(root: Path, force: bool, dry_run: bool):
    c_data, gfx_data, map_data = verify_payloads()
    current_c, current_gfx, current_map = inspect_state(root)

    log("Estado atual:")
    log(f"  {TARGET_C}: {current_c or 'ausente'}")
    log(f"  {TARGET_GFX}: {current_gfx or 'ausente'}")
    log(f"  {TARGET_MAP}: {current_map or 'ausente'}")

    c_is_old = current_c == OLD_C_SHA256
    c_is_new = current_c == NEW_C_SHA256

    if not c_is_old and not c_is_new and not force:
        die(
            "\nO src/dark_suicune_scene.c desta repo nao bate nem com a versao "
            "original esperada nem com a versao ja atualizada.\n"
            "Para evitar apagar alteracoes suas, parei aqui.\n"
            "Se voce QUER substituir esse arquivo mesmo assim, rode:\n"
            "    python3 upgrade_dark_suicune.py --force\n"
            "O --force ainda cria backup antes de substituir."
        )

    needs_c = not c_is_new
    needs_gfx = current_gfx != NEW_GFX_SHA256
    needs_map = current_map != NEW_MAP_SHA256

    if not (needs_c or needs_gfx or needs_map):
        log("\nUpgrade ja esta instalado e os hashes estao corretos.")
        return None

    changed_paths = []
    if needs_c:
        changed_paths.append(TARGET_C)
    if needs_gfx:
        changed_paths.append(TARGET_GFX)
    if needs_map:
        changed_paths.append(TARGET_MAP)

    backup_dir = make_backup(root, changed_paths, dry_run)
    log(f"Backup: {backup_dir.relative_to(root)}")

    actions = [
        (TARGET_C, c_data, NEW_C_SHA256, needs_c),
        (TARGET_GFX, gfx_data, NEW_GFX_SHA256, needs_gfx),
        (TARGET_MAP, map_data, NEW_MAP_SHA256, needs_map),
    ]

    for rel, data, expected, needed in actions:
        if not needed:
            log(f"  ok:          {rel}")
            continue
        if dry_run:
            log(f"  [dry-run] escreveria: {rel}")
            continue
        atomic_write(root / rel, data)
        got = sha256_file(root / rel)
        if got != expected:
            die(f"Falha de verificacao depois de escrever {rel}: {got}")
        log(f"  atualizado:  {rel}")

    if dry_run:
        log("\nDry-run concluido; nenhum arquivo foi alterado.")
    else:
        log("\nUpgrade aplicado e verificado por SHA-256.")
    return backup_dir

def run_git_diff_check(root: Path):
    git = shutil.which("git")
    if not git or not (root / ".git").exists():
        log("Git nao detectado; pulando `git diff --check`.")
        return
    log("\nVerificando whitespace com `git diff --check`...")
    proc = subprocess.run([git, "diff", "--check", "--", str(TARGET_C)], cwd=root)
    if proc.returncode != 0:
        die("`git diff --check` encontrou um problema.")

def run_build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        die("`make` nao foi encontrado no PATH.")
    cmd = [make, f"-j{jobs}"]
    log("\nCompilando:")
    log("  " + " ".join(cmd))
    proc = subprocess.run(cmd, cwd=root)
    if proc.returncode != 0:
        die(
            f"Build falhou com codigo {proc.returncode}. "
            "As alteracoes foram mantidas para diagnostico."
        )
    log("\nBuild concluido com sucesso.")

def print_summary(root: Path, backup_dir, built: bool):
    c_hash, gfx_hash, map_hash = inspect_state(root)
    log("\nResumo:")
    log(f"  C:   {'OK' if c_hash == NEW_C_SHA256 else 'ERRO'}  {c_hash}")
    log(f"  GFX: {'OK' if gfx_hash == NEW_GFX_SHA256 else 'ERRO'}  {gfx_hash}")
    log(f"  MAP: {'OK' if map_hash == NEW_MAP_SHA256 else 'ERRO'}  {map_hash}")
    log(f"  Build: {'executado' if built else 'nao executado'}")
    if backup_dir is not None:
        log(f"  Backup: {backup_dir.relative_to(root)}")
        log("  Para restaurar o backup mais recente:")
        log("    python3 upgrade_dark_suicune.py --restore-latest")

def parse_args():
    parser = argparse.ArgumentParser(description="Instala o upgrade da cutscene Dark Suicune.")
    parser.add_argument("--root", type=Path, default=Path.cwd(),
                        help="raiz da repo (padrao: diretorio atual)")
    parser.add_argument("--dry-run", action="store_true",
                        help="mostra as mudancas sem escrever arquivos nem compilar")
    parser.add_argument("--no-build", action="store_true",
                        help="nao roda make depois do upgrade")
    parser.add_argument("--jobs", type=int, default=8,
                        help="numero de jobs do make (padrao: 8)")
    parser.add_argument("--force", action="store_true",
                        help="substitui um C inesperado/customizado depois de criar backup")
    parser.add_argument("--restore-latest", action="store_true",
                        help="restaura o backup mais recente e sai")
    return parser.parse_args()

def main():
    args = parse_args()
    root = args.root.expanduser().resolve()
    if args.jobs < 1:
        die("--jobs precisa ser >= 1")

    validate_root(root)
    log("Dark Suicune cutscene upgrader")
    log(f"Repo: {root}")

    if args.restore_latest:
        restore_backup(root, latest_backup(root), args.dry_run)
        return 0

    backup_dir = apply_upgrade(root, args.force, args.dry_run)
    if args.dry_run:
        return 0

    run_git_diff_check(root)

    built = False
    if not args.no_build:
        try:
            run_build(root, args.jobs)
            built = True
        except UpgradeError as e:
            log(f"\nERRO: {e}")
            if backup_dir is not None:
                log("\nPara desfazer este upgrade:")
                log("  python3 upgrade_dark_suicune.py --restore-latest")
            return 2

    print_summary(root, backup_dir, built)
    return 0

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except UpgradeError as exc:
        print(f"\nERRO: {exc}", file=sys.stderr)
        raise SystemExit(1)
