#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys

avatar_path = Path("src/field_player_avatar.c")
move_path = Path("src/event_object_movement.c")

for p in (avatar_path, move_path):
    if not p.exists():
        print(f"ERROR: {p} not found.")
        print("Run this from the pokeemerald-expansion root.")
        sys.exit(1)

avatar = avatar_path.read_text()
move = move_path.read_text()

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
        raise RuntimeError(f"function definition not found: {name}")
    a, b = pos
    return text[:a] + replacement.rstrip() + text[b:]

# A) Upgrade field_player_avatar.c from the installed x5 hook to 0/5/10.
if "DebugGetPlayerSpeedMode(void)" not in avatar:
    old_state = re.compile(
        r'static EWRAM_DATA bool8 sDebugPlayerSpeed5xEnabled = FALSE;\s*'
        r'static EWRAM_DATA u8 sDebugPlayerSpeed5xPhase = 0;\s*'
        r'bool32 DebugPlayerSpeed5xIsEnabled\(void\)\s*\{.*?\}\s*'
        r'void DebugTogglePlayerSpeed5x\(void\)\s*\{.*?\}',
        re.S
    )
    m = old_state.search(avatar)
    if not m:
        print("ERROR: installed V2/V3 x5 state block not found in field_player_avatar.c.")
        print('Run: grep -n -A30 "sDebugPlayerSpeed" src/field_player_avatar.c')
        sys.exit(1)

    state = '''static EWRAM_DATA u8 sDebugPlayerSpeedMode = 0;
static EWRAM_DATA u8 sDebugPlayerSpeedPhase = 0;

u8 DebugGetPlayerSpeedMode(void)
{
    return sDebugPlayerSpeedMode;
}

void DebugSetPlayerSpeedMode(u8 mode)
{
    if (mode != 5 && mode != 10)
        mode = 0;

    sDebugPlayerSpeedMode = mode;
    sDebugPlayerSpeedPhase = 0;
}'''
    avatar = avatar[:m.start()] + state + avatar[m.end():]

    helper_name = "GetDebugPlayerSpeed5xMovementAction"
    if find_function(avatar, helper_name) is None:
        print("ERROR: old x5 movement helper not found.")
        sys.exit(1)

    helper = '''static u8 GetDebugPlayerSpeedMovementAction(u8 direction)
{
    u8 movementAction;

    if (sDebugPlayerSpeedMode == 10)
    {
        // 4 + 1 + 1 + 1 + 1 frames over five tiles = exact x10 average.
        if (sDebugPlayerSpeedPhase == 0)
            movementAction = GetWalkFasterMovementAction(direction);
        else
            movementAction = GetSlideMovementAction(direction);
    }
    else
    {
        // 4 + 4 + 4 + 2 + 2 frames over five tiles = exact x5 average.
        if (sDebugPlayerSpeedPhase < 3)
            movementAction = GetWalkFasterMovementAction(direction);
        else
            movementAction = GetSlideMovementAction(direction);
    }

    sDebugPlayerSpeedPhase++;
    if (sDebugPlayerSpeedPhase >= 5)
        sDebugPlayerSpeedPhase = 0;

    return movementAction;
}'''
    avatar = replace_function(avatar, helper_name, helper)

    walk = '''void PlayerWalkNormal(u8 direction)
{
    if (sDebugPlayerSpeedMode != 0)
    {
        // Enforce follower incompatibility even if one is recreated later.
        if (PlayerHasFollowerNPC())
            DestroyFollowerNPC();

        PlayerSetAnimId(GetDebugPlayerSpeedMovementAction(direction), COPY_MOVE_WALK);
    }
    else
    {
        PlayerSetAnimId(GetWalkNormalMovementAction(direction), COPY_MOVE_WALK);
    }
}'''
    avatar = replace_function(avatar, "PlayerWalkNormal", walk)

    run = '''static void PlayerRun(u8 direction)
{
    if (sDebugPlayerSpeedMode != 0)
    {
        if (PlayerHasFollowerNPC())
            DestroyFollowerNPC();

        PlayerSetAnimId(GetDebugPlayerSpeedMovementAction(direction), COPY_MOVE_WALK);
    }
    else
    {
        PlayerSetAnimId(GetPlayerRunMovementAction(direction), COPY_MOVE_WALK);
    }
}'''
    avatar = replace_function(avatar, "PlayerRun", run)
else:
    print("field_player_avatar.c: speed mode API already present.")

# B) Add a DEV-only 16px/1-frame movement speed.
# We do NOT modify movement_action_func_tables.h. The debug Slide path uses
# InitNpcForMovement directly and explicitly picks the fastest walk animation.
if "MOVE_SPEED_DEBUG_16" not in move:
    special_anchor = "#define SPECIAL_LOCALIDS_START"
    idx = move.find(special_anchor)
    if idx < 0:
        print("ERROR: SPECIAL_LOCALIDS_START anchor not found in event_object_movement.c.")
        sys.exit(1)
    move = move[:idx] + "u8 DebugGetPlayerSpeedMode(void);\n\n" + move[idx:]

    enum_old = "    MOVE_SPEED_FASTEST,\n};"
    enum_new = "    MOVE_SPEED_FASTEST,\n    MOVE_SPEED_DEBUG_16, // DEV x10 one-frame tile\n};"
    if enum_old not in move:
        print("ERROR: MOVE_SPEED_FASTEST enum anchor not found.")
        sys.exit(1)
    move = move.replace(enum_old, enum_new, 1)

    step8_pat = re.compile(
        r'static void Step8\(struct Sprite \*sprite, ([^)]+)\)\s*\n'
        r'\{.*?\n\}',
        re.S
    )
    m = step8_pat.search(move)
    if not m:
        print("ERROR: Step8 function not found.")
        sys.exit(1)

    arg = m.group(1).strip()
    parts = arg.rsplit(" ", 1)
    if len(parts) != 2:
        print("ERROR: could not parse Step8 direction argument.")
        sys.exit(1)
    dir_type, dir_name = parts

    step16 = f'''

static void Step16(struct Sprite *sprite, {dir_type} {dir_name})
{{
    sprite->x += 16 * (u16) sDirectionToVectors[{dir_name}].x;
    sprite->y += 16 * (u16) sDirectionToVectors[{dir_name}].y;
}}'''
    move = move[:m.end()] + step16 + move[m.end():]

    table_pat = re.compile(
        r'static const SpriteStepFunc sStep8Funcs\[\]\s*=\s*\{\s*Step8,\s*Step8,\s*\};',
        re.S
    )
    tm = table_pat.search(move)
    if not tm:
        print("ERROR: sStep8Funcs table not found.")
        sys.exit(1)
    replacement = tm.group(0) + "\n\nstatic const SpriteStepFunc sStep16Funcs[] = {\n    Step16,\n};"
    move = move[:tm.start()] + replacement + move[tm.end():]

    speed_table_old = "    [MOVE_SPEED_FASTEST] = sStep8Funcs,\n};"
    speed_table_new = "    [MOVE_SPEED_FASTEST] = sStep8Funcs,\n    [MOVE_SPEED_DEBUG_16] = sStep16Funcs,\n};"
    if speed_table_old not in move:
        print("ERROR: sNpcStepFuncTables anchor not found.")
        sys.exit(1)
    move = move.replace(speed_table_old, speed_table_new, 1)

    times_old = "    [MOVE_SPEED_FASTEST] = ARRAY_COUNT(sStep8Funcs),\n};"
    times_new = "    [MOVE_SPEED_FASTEST] = ARRAY_COUNT(sStep8Funcs),\n    [MOVE_SPEED_DEBUG_16] = ARRAY_COUNT(sStep16Funcs),\n};"
    if times_old not in move:
        print("ERROR: sStepTimes anchor not found.")
        sys.exit(1)
    move = move.replace(times_old, times_new, 1)

    slide_start = move.find("bool8 MovementAction_SlideDown_Step0")
    if slide_start < 0:
        print("ERROR: Slide movement functions not found.")
        sys.exit(1)

    selector = '''static bool8 IsDebugPlayerSpeed10x(const struct ObjectEvent *objectEvent)
{
    return objectEvent->isPlayer && DebugGetPlayerSpeedMode() == 10;
}

static void InitDebugMovement16(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForMovement(objectEvent, sprite, direction, MOVE_SPEED_DEBUG_16);
    SetStepAnimHandleAlternation(
        objectEvent,
        sprite,
        GetMoveDirectionFastestAnimNum(objectEvent->facingDirection)
    );
}

'''
    move = move[:slide_start] + selector + move[slide_start:]

    slide_end = move.find("bool8 MovementAction_PlayerRunDown_Step0", slide_start)
    if slide_end < 0:
        print("ERROR: end of Slide movement block not found.")
        sys.exit(1)

    block = move[slide_start:slide_end]

    # Patch the four Slide Step0 functions while preserving each direction expression.
    pattern = re.compile(
        r'InitMovementNormal\(objectEvent,\s*sprite,\s*([^,]+),\s*MOVE_SPEED_FASTEST\);'
    )

    def repl(m):
        direction = m.group(1).strip()
        return (
            f'if (IsDebugPlayerSpeed10x(objectEvent))\n'
            f'        InitDebugMovement16(objectEvent, sprite, {direction});\n'
            f'    else\n'
            f'        InitMovementNormal(objectEvent, sprite, {direction}, MOVE_SPEED_FASTEST);'
        )

    block2, replaced = pattern.subn(repl, block)
    if replaced < 4:
        print(f"ERROR: expected 4 Slide speed patches, got {replaced}.")
        sys.exit(1)

    move = move[:slide_start] + block2 + move[slide_end:]
else:
    print("event_object_movement.c: DEV 16px movement speed already present.")

for n in [
    "u8 DebugGetPlayerSpeedMode(void)",
    "void DebugSetPlayerSpeedMode(u8 mode)",
    "GetDebugPlayerSpeedMovementAction",
    "sDebugPlayerSpeedMode == 10",
    "DestroyFollowerNPC();",
]:
    if n not in avatar:
        print("ERROR: avatar verification failed:", n)
        sys.exit(1)

for n in [
    "MOVE_SPEED_DEBUG_16",
    "static void Step16",
    "sStep16Funcs",
    "[MOVE_SPEED_DEBUG_16] = sStep16Funcs",
    "[MOVE_SPEED_DEBUG_16] = ARRAY_COUNT(sStep16Funcs)",
    "InitDebugMovement16",
    "IsDebugPlayerSpeed10x",
]:
    if n not in move:
        print("ERROR: movement verification failed:", n)
        sys.exit(1)

avatar_bak = avatar_path.with_suffix(avatar_path.suffix + ".bak_speed_modes_v4")
move_bak = move_path.with_suffix(move_path.suffix + ".bak_speed_modes_v4")
if not avatar_bak.exists():
    shutil.copy2(avatar_path, avatar_bak)
if not move_bak.exists():
    shutil.copy2(move_path, move_bak)

avatar_path.write_text(avatar)
move_path.write_text(move)

print("OK: DEV player speed modes installed.")
print("- Normal Trainer Speed = x1")
print("- Player Speed x5 = exact x5 average")
print("- Player Speed x10 = exact x10 average")
print("- x5/x10 destroy followers")
print("Backups:")
print(" ", avatar_bak)
print(" ", move_bak)
