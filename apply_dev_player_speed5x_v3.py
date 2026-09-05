#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys

path = Path("src/field_player_avatar.c")
if not path.exists():
    print("ERROR: src/field_player_avatar.c not found.")
    print("Run this from the pokeemerald-expansion root.")
    sys.exit(1)

text = path.read_text()

targets = [
    ("static u8 GetDebugPlayerSpeed5xMovementAction(enum Direction direction)",
     "static u8 GetDebugPlayerSpeed5xMovementAction(u8 direction)"),
    ("void PlayerWalkNormal(enum Direction direction)",
     "void PlayerWalkNormal(u8 direction)"),
    ("static void PlayerRun(enum Direction direction)",
     "static void PlayerRun(u8 direction)"),
]

changed = 0
for old, new in targets:
    if old in text:
        text = text.replace(old, new, 1)
        changed += 1

if changed == 0:
    # Idempotency / diagnostic.
    if all(new in text for _, new in targets):
        print("Speed x5 Direction type fix is already installed.")
        sys.exit(0)

    print("ERROR: expected Speed x5 signatures were not found.")
    print('Run:')
    print('  grep -n -A45 "GetDebugPlayerSpeed5xMovementAction" src/field_player_avatar.c')
    sys.exit(1)

# Verify all three final signatures.
for _, new in targets:
    if new not in text:
        print("ERROR: verification failed:", new)
        sys.exit(1)

backup = path.with_suffix(path.suffix + ".bak_speed5x_v3")
if not backup.exists():
    shutil.copy2(path, backup)

path.write_text(text)

print("OK: Speed x5 Direction type fix installed.")
print("Changed enum Direction -> u8 in the 3 inserted movement functions.")
print("Backup:", backup)
