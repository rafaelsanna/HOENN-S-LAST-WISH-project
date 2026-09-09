#!/usr/bin/env python3
'''
Nightmare Petalburg - DarkAura camera trigger installer.

Put this file in the root of pokeemerald-expansion and run:

    python3 install_nightmare_petalburg_camera_scene.py --dry-run
    python3 install_nightmare_petalburg_camera_scene.py

The trigger is read from map.json. The camera pan distance is calculated from
the trigger X to the DarkAura X, so moving either event later does not require
hardcoding a new movement count.
'''

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile

MAP_JSON = Path("data/maps/NightmarePetalburg/map.json")
SCRIPTS = Path("data/maps/NightmarePetalburg/scripts.inc")
BACKUP_ROOT = Path(".nightmare_petalburg_camera_backups")

TRIGGER_SCRIPT = "NightmarePetalburg_Suicune"
DARK_AURA_LOCAL_ID = "LOCALID_NIGHTMARE_PETALBURG_DARK_AURA"
DARK_AURA_FLAG = "FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA"

BEGIN_MARKER = "@ >>> HLW NIGHTMARE PETALBURG CAMERA SCENE BEGIN"
END_MARKER = "@ <<< HLW NIGHTMARE PETALBURG CAMERA SCENE END"
AFTER_SCENE_LABEL = "NightmarePetalburg_EventScript_DarkAuraBattle_AfterScene"


class InstallError(RuntimeError):
    pass


def log(msg=""):
    print(msg, flush=True)


def sha256(path: Path):
    if not path.is_file():
        return None
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def atomic_write(path: Path, data: bytes):
    mode = path.stat().st_mode if path.exists() else 0o644
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, tmp_name = tempfile.mkstemp(prefix=path.name + ".tmp.", dir=str(path.parent))
    tmp = Path(tmp_name)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        os.chmod(tmp, mode)
        os.replace(tmp, path)
    finally:
        if tmp.exists():
            tmp.unlink()


def validate_root(root: Path):
    if not (root / "Makefile").is_file():
        raise InstallError("Rode este script na raiz do pokeemerald-expansion.")
    for rel in (MAP_JSON, SCRIPTS):
        if not (root / rel).is_file():
            raise InstallError(f"Nao encontrei {rel}.")


def read_scene_geometry(root: Path):
    try:
        data = json.loads((root / MAP_JSON).read_text(encoding="utf-8"))
    except Exception as e:
        raise InstallError(f"Falha ao ler {MAP_JSON}: {e}") from e

    triggers = [
        e for e in data.get("coord_events", [])
        if e.get("type") == "trigger" and e.get("script") == TRIGGER_SCRIPT
    ]
    if len(triggers) != 1:
        raise InstallError(
            f"Esperava exatamente 1 coord trigger com script {TRIGGER_SCRIPT}; "
            f"encontrei {len(triggers)}."
        )
    trigger = triggers[0]

    objects = [
        e for e in data.get("object_events", [])
        if e.get("local_id") == DARK_AURA_LOCAL_ID
    ]
    if len(objects) != 1:
        raise InstallError(
            f"Esperava exatamente 1 objeto {DARK_AURA_LOCAL_ID}; "
            f"encontrei {len(objects)}."
        )
    aura = objects[0]

    tx, ty = int(trigger["x"]), int(trigger["y"])
    ax, ay = int(aura["x"]), int(aura["y"])

    return {
        "trigger_x": tx,
        "trigger_y": ty,
        "aura_x": ax,
        "aura_y": ay,
        "dx": ax - tx,
        "dy": ay - ty,
    }


def build_camera_movement(dx: int):
    if dx == 0:
        return ["    delay_8"]
    command = "walk_right" if dx > 0 else "walk_left"
    return [f"    {command}" for _ in range(abs(dx))]


def camera_block(geom, hold_frames: int):
    movement = "\n".join(build_camera_movement(geom["dx"]))
    return f'''{BEGIN_MARKER}
@
@ Geometry read from map.json at install time:
@ trigger=({geom["trigger_x"]},{geom["trigger_y"]})
@ DarkAura=({geom["aura_x"]},{geom["aura_y"]})
@ horizontal delta={geom["dx"]}; vertical delta={geom["dy"]} ignored on purpose
@
{TRIGGER_SCRIPT}::
    goto_if_set {DARK_AURA_FLAG}, NightmarePetalburg_Suicune_AlreadyDone
    lockall
    setvar VAR_TEMP_0, 1
    special SpawnCameraObject
    applymovement LOCALID_CAMERA, NightmarePetalburg_Movement_CameraToDarkAura
    waitmovement 0
    delay {hold_frames}
    fadescreenspeed FADE_TO_BLACK, 8
    special RemoveCameraObject
    delay 8
    special StartDarkSuicuneScene
    waitstate
    goto {AFTER_SCENE_LABEL}
    end

NightmarePetalburg_Suicune_AlreadyDone::
    setvar VAR_TEMP_0, 1
    end

NightmarePetalburg_Movement_CameraToDarkAura:
{movement}
    step_end
{END_MARKER}

'''


def remove_old_camera_block(text: str):
    if BEGIN_MARKER not in text and END_MARKER not in text:
        return text
    if text.count(BEGIN_MARKER) != 1 or text.count(END_MARKER) != 1:
        raise InstallError("Markers do patch de camera estao inconsistentes.")
    start = text.index(BEGIN_MARKER)
    end = text.index(END_MARKER, start) + len(END_MARKER)
    while end < len(text) and text[end] in "\r\n":
        end += 1
    return text[:start] + text[end:]


def patch_battle_flow(text: str):
    if f"{AFTER_SCENE_LABEL}::" in text:
        return text

    pattern = re.compile(
        r"(NightmarePetalburg_EventScript_DarkAuraBattle::\s*\n"
        r"(?:[^\n]*\n)*?"
        r"\s*special StartDarkSuicuneScene\s*\n"
        r"\s*waitstate\s*\n)"
        r"(\s*waitse\s*\n)",
        re.M,
    )
    m = pattern.search(text)
    if not m:
        raise InstallError(
            "Nao encontrei StartDarkSuicuneScene -> waitstate -> waitse "
            "no script existente da batalha."
        )

    replacement = (
        m.group(1)
        + f"{AFTER_SCENE_LABEL}::\n"
        + "    fadescreenspeed FADE_TO_BLACK, 1\n"
        + m.group(2)
    )
    return text[:m.start()] + replacement + text[m.end():]


def convert_releases_for_shared_flow(text: str):
    start = text.find("NightmarePetalburg_EventScript_DarkAuraBattle::")
    end = text.find("NightmarePetalburg_EventScript_CorviknightExit::")
    if start < 0 or end < 0 or end <= start:
        raise InstallError("Nao consegui isolar a regiao DarkAura.")

    region = text[start:end]
    region = re.sub(r"(?m)^(\s*)release\s*$", r"\1releaseall", region)
    return text[:start] + region + text[end:]


def insert_camera_block(text: str, block: str, force: bool):
    if re.search(rf"(?m)^{re.escape(TRIGGER_SCRIPT)}::", text):
        if not force:
            raise InstallError(
                f"{TRIGGER_SCRIPT} ja existe fora do patch. "
                "Use --force apenas se quiser substitui-lo."
            )
        m = re.search(rf"(?m)^{re.escape(TRIGGER_SCRIPT)}::\n", text)
        nxt = re.search(r"(?m)^[A-Za-z_][A-Za-z0-9_]*::\n", text[m.end():])
        end = m.end() + (nxt.start() if nxt else len(text[m.end():]))
        text = text[:m.start()] + text[end:]

    anchor = "NightmarePetalburg_EventScript_DarkAuraBattle::"
    pos = text.find(anchor)
    if pos < 0:
        raise InstallError(f"Nao encontrei {anchor}.")
    return text[:pos] + block + text[pos:]


def sanity_check(text: str, geom, hold_frames: int):
    required = [
        f"{TRIGGER_SCRIPT}::",
        "special SpawnCameraObject",
        "applymovement LOCALID_CAMERA, NightmarePetalburg_Movement_CameraToDarkAura",
        "special RemoveCameraObject",
        "special StartDarkSuicuneScene",
        f"{AFTER_SCENE_LABEL}::",
        "fadescreenspeed FADE_TO_BLACK, 1",
        "setvar VAR_TEMP_0, 1",
        "special BattleSetup_StartDarkAuraBattle",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        raise InstallError("Verificacao final falhou: " + ", ".join(missing))

    start = text.index("NightmarePetalburg_Movement_CameraToDarkAura:")
    end = text.index("step_end", start)
    movement = text[start:end]

    if geom["dx"] != 0:
        cmd = "walk_right" if geom["dx"] > 0 else "walk_left"
        actual = len(re.findall(rf"(?m)^\s*{cmd}\s*$", movement))
        if actual != abs(geom["dx"]):
            raise InstallError(
                f"Camera: esperado {abs(geom['dx'])}x {cmd}, encontrado {actual}."
            )

    if f"delay {hold_frames}" not in text:
        raise InstallError("Hold de camera incorreto.")


def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    for rel in (SCRIPTS, MAP_JSON):
        src = root / rel
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)

    (dest / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "files": {
                    str(SCRIPTS): sha256(root / SCRIPTS),
                    str(MAP_JSON): sha256(root / MAP_JSON),
                },
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )
    return dest


def latest_backup(root: Path):
    parent = root / BACKUP_ROOT
    if not parent.is_dir():
        raise InstallError("Nenhum backup encontrado.")
    dirs = sorted(
        [p for p in parent.iterdir() if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not dirs:
        raise InstallError("Nenhum backup valido encontrado.")
    return dirs[0]


def restore_latest(root: Path, dry_run: bool):
    b = latest_backup(root)
    manifest = json.loads((b / "manifest.json").read_text(encoding="utf-8"))
    log(f"Restaurando {b.relative_to(root)}")
    for rel_s in manifest["files"]:
        rel = Path(rel_s)
        src = b / rel
        if dry_run:
            log(f"[dry-run] restauraria {rel}")
        else:
            atomic_write(root / rel, src.read_bytes())
            log(f"  restaurado: {rel}")


def apply(root: Path, hold_frames: int, force: bool, dry_run: bool):
    geom = read_scene_geometry(root)
    path = root / SCRIPTS
    original = path.read_text(encoding="utf-8")

    log("Nightmare Petalburg - DarkAura Camera Scene")
    log(f"Repo: {root}")
    log(f"Trigger:  ({geom['trigger_x']}, {geom['trigger_y']})")
    log(f"DarkAura: ({geom['aura_x']}, {geom['aura_y']})")
    log(f"Pan horizontal: {geom['dx']} tiles")
    if geom["dy"]:
        log(
            f"Y difere em {geom['dy']} tiles; conforme pedido, o pan continua horizontal."
        )
    log(f"Hold: {hold_frames} frames")

    text = remove_old_camera_block(original)
    text = patch_battle_flow(text)
    text = convert_releases_for_shared_flow(text)
    text = insert_camera_block(text, camera_block(geom, hold_frames), force)
    sanity_check(text, geom, hold_frames)

    if text == original:
        log("\nPatch ja esta aplicado.")
        return None

    backup = make_backup(root, dry_run)
    if dry_run:
        log(f"\n[dry-run] alteraria somente {SCRIPTS}")
        log("[dry-run] map.json foi apenas validado.")
        log("[dry-run] nenhum arquivo foi escrito.")
        return backup

    atomic_write(path, text.encode("utf-8"))
    sanity_check(path.read_text(encoding="utf-8"), geom, hold_frames)
    log(f"\nBackup: {backup.relative_to(root)}")
    log(f"SHA scripts.inc: {sha256(path)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(SCRIPTS)],
            cwd=root,
        ).returncode
        if rc != 0:
            raise InstallError("git diff --check encontrou problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise InstallError("make nao encontrado.")
    log(f"\nCompilando: make -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise InstallError(f"Build falhou com codigo {rc}.")
    log("\nBUILD OK.")


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--root", type=Path, default=Path.cwd())
    p.add_argument("--hold-frames", type=int, default=90)
    p.add_argument("--jobs", type=int, default=8)
    p.add_argument("--no-build", action="store_true")
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--force", action="store_true")
    p.add_argument("--restore-latest", action="store_true")
    args = p.parse_args()

    if args.jobs < 1:
        raise InstallError("--jobs precisa ser >= 1")
    if not 1 <= args.hold_frames <= 600:
        raise InstallError("--hold-frames precisa estar entre 1 e 600.")

    root = args.root.expanduser().resolve()
    validate_root(root)

    if args.restore_latest:
        restore_latest(root, args.dry_run)
        return 0

    backup = apply(root, args.hold_frames, args.force, args.dry_run)
    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except InstallError:
            if backup is not None:
                log("\nPara desfazer:")
                log("  python3 install_nightmare_petalburg_camera_scene.py --restore-latest")
            raise

    log("\nFluxo instalado:")
    log("  trigger -> camera horizontal -> hold DarkAura -> preto")
    log("  -> StartDarkSuicuneScene -> preto -> batalha Dark Aura")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except InstallError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
