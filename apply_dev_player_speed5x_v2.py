#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys
import re

path = Path("src/field_player_avatar.c")
if not path.exists():
    print("ERROR: src/field_player_avatar.c not found.")
    print("Run this from the pokeemerald-expansion project root.")
    sys.exit(1)

text = path.read_text()

if ("bool32 DebugPlayerSpeed5xIsEnabled(void)" in text
    and "void DebugTogglePlayerSpeed5x(void)" in text
    and "GetDebugPlayerSpeed5xMovementAction" in text):
    print("Player Speed x5 core hook is already installed.")
    sys.exit(0)

def find_function(text, name):
    pat = re.compile(
        rf'^(?:static\s+)?(?:void|u8|u16|u32|bool8|bool32|s8|s16|s32)\s+'
        rf'{re.escape(name)}\s*\([^;\n]*\)\s*\n\{{',
        re.M
    )
    m = pat.search(text)
    if not m:
        return None

    start = m.start()
    brace = text.find("{", m.start(), m.end())
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return start, i + 1
    return None

def replace_function(text, name, replacement):
    pos = find_function(text, name)
    if pos is None:
        print(f"ERROR: real function definition not found: {name}")
        sys.exit(1)
    start, end = pos
    return text[:start] + replacement.rstrip() + text[end:]

# 1) Session-only state + exported DEV toggle functions.
avatar_re = re.compile(
    r'^(EWRAM_DATA\s+struct\s+PlayerAvatar\s+gPlayerAvatar\s*=\s*\{\s*\};\s*)$',
    re.M
)
m = avatar_re.search(text)
if not m:
    print("ERROR: gPlayerAvatar definition not found.")
    sys.exit(1)

state_block = m.group(1) + '''
// DEV QoL: session-only on-foot speed toggle.
// It is deliberately not part of the save file.
static EWRAM_DATA bool8 sDebugPlayerSpeed5xEnabled = FALSE;
static EWRAM_DATA u8 sDebugPlayerSpeed5xPhase = 0;

bool32 DebugPlayerSpeed5xIsEnabled(void)
{
    return sDebugPlayerSpeed5xEnabled;
}

void DebugTogglePlayerSpeed5x(void)
{
    sDebugPlayerSpeed5xEnabled ^= TRUE;
    sDebugPlayerSpeed5xPhase = 0;
}
'''
text = text[:m.start()] + state_block + text[m.end():]

# 2) Define helper immediately before the real PlayerWalkNormal definition.
walk_pos = find_function(text, "PlayerWalkNormal")
if walk_pos is None:
    print("ERROR: PlayerWalkNormal definition not found.")
    sys.exit(1)

helper = '''// DEV x5 movement.
// MOVE_SPEED_FASTER advances 4 pixels/frame -> 4 frames per tile.
// MOVE_SPEED_FASTEST advances 8 pixels/frame -> 2 frames per tile.
// Cycling 4,4,4,2,2 frames = 16 frames for 5 tiles.
// Normal walking is 80 frames for the same 5 tiles, so the average is x5.
static u8 GetDebugPlayerSpeed5xMovementAction(enum Direction direction)
{
    u8 movementAction;

    if (sDebugPlayerSpeed5xPhase < 3)
        movementAction = GetWalkFasterMovementAction(direction);
    else
        movementAction = GetSlideMovementAction(direction);

    sDebugPlayerSpeed5xPhase++;
    if (sDebugPlayerSpeed5xPhase >= 5)
        sDebugPlayerSpeed5xPhase = 0;

    return movementAction;
}

'''
text = text[:walk_pos[0]] + helper + text[walk_pos[0]:]

# 3) Patch manual on-foot walk/run only.
walk_replacement = '''void PlayerWalkNormal(enum Direction direction)
{
    if (sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC())
        PlayerSetAnimId(GetDebugPlayerSpeed5xMovementAction(direction), COPY_MOVE_WALK);
    else
        PlayerSetAnimId(GetWalkNormalMovementAction(direction), COPY_MOVE_WALK);
}'''
text = replace_function(text, "PlayerWalkNormal", walk_replacement)

run_replacement = '''static void PlayerRun(enum Direction direction)
{
    if (sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC())
        PlayerSetAnimId(GetDebugPlayerSpeed5xMovementAction(direction), COPY_MOVE_WALK);
    else
        PlayerSetAnimId(GetPlayerRunMovementAction(direction), COPY_MOVE_WALK);
}'''
text = replace_function(text, "PlayerRun", run_replacement)

# 4) Verify before writing.
required = [
    "bool32 DebugPlayerSpeed5xIsEnabled(void)",
    "void DebugTogglePlayerSpeed5x(void)",
    "static u8 GetDebugPlayerSpeed5xMovementAction(enum Direction direction)",
    "GetWalkFasterMovementAction(direction)",
    "GetSlideMovementAction(direction)",
    "sDebugPlayerSpeed5xPhase >= 5",
    "sDebugPlayerSpeed5xEnabled && !PlayerHasFollowerNPC()",
]
for needle in required:
    if needle not in text:
        print("ERROR: internal verification failed:", needle)
        sys.exit(1)

if text.count("bool32 DebugPlayerSpeed5xIsEnabled(void)") != 1:
    print("ERROR: duplicate DebugPlayerSpeed5xIsEnabled definition.")
    sys.exit(1)
if text.count("void DebugTogglePlayerSpeed5x(void)") != 1:
    print("ERROR: duplicate DebugTogglePlayerSpeed5x definition.")
    sys.exit(1)

backup = path.with_suffix(path.suffix + ".bak_speed5x_v2")
if not backup.exists():
    shutil.copy2(path, backup)

path.write_text(text)

print("OK: Player Speed x5 core hook installed.")
print("Backup:", backup)
print("The previous undefined references should now be resolved.")
