#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib

PACK_ZIP = "BATTLE_RADIO_UI_AND_L_OPEN_V2.zip"
PATCH_TAG = "HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2"

ASSETS = {
    "radiodisplay.png":    ("assets/radiodisplay.png",    "addf22dfc447b788655be94907031a3df6e9e8520d31ea58767b6f6f77afaf83"),
    "radiodisplay.bin":    ("assets/radiodisplay.bin",    "85eae7a58f993330498fd034e84ec865dbc2f10ad2c3e5b07fdddd396edf991b"),
    "radiodisplay.4bpp":   ("assets/radiodisplay.4bpp",   "bafcee44e2f306f1d868a226ae2fd4c809d8e0670ba14e0d35f5e9dad1098c9f"),
    "radiodisplay.gbapal": ("assets/radiodisplay.gbapal", "c7acceaef6593302bbd9a78306f8575f73e2bb93dfc04bf668ea3dfbbae305be"),
}

EXTERN_LINES = [
    "extern bool8 RadioPriority_ShouldBlockBgmChange(void);",
    "extern bool8 RadioPriority_NextTrack(void);",
    "extern bool8 RadioPriority_PreviousTrack(void);",
    "extern void Radio_Open(MainCallback returnCallback);",
]

ASSET_DECLS = r'''
// HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2
// User-provided 128x16 battle-radio strip.
// The .bin is a 30x20 tilemap authored at screen coordinates; only the
// x=15..29 / y=0..1 strip is copied into the battle action page (BG0 y=160).
#define BATTLE_RADIO_DISPLAY_TILE_BASE    0x3C0
#define BATTLE_RADIO_DISPLAY_PAL_NUM      15
#define BATTLE_RADIO_DISPLAY_SRC_WIDTH    30
#define BATTLE_RADIO_DISPLAY_SRC_X        15
#define BATTLE_RADIO_DISPLAY_SRC_Y        0
#define BATTLE_RADIO_DISPLAY_X            15
#define BATTLE_RADIO_DISPLAY_Y            20
#define BATTLE_RADIO_DISPLAY_WIDTH        15
#define BATTLE_RADIO_DISPLAY_HEIGHT       2

static const u32 sBattleRadioDisplayGfx[] = INCBIN_U32("graphics/battle_interface/radiodisplay.4bpp");
static const u16 sBattleRadioDisplayPal[] = INCBIN_U16("graphics/battle_interface/radiodisplay.gbapal");
static const u16 sBattleRadioDisplayMap[] = INCBIN_U16("graphics/battle_interface/radiodisplay.bin");
'''

HELPERS = r'''
// HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2
static void BattleRadioDisplay_Update(void)
{
    u16 tiles[BATTLE_RADIO_DISPLAY_WIDTH * BATTLE_RADIO_DISPLAY_HEIGHT];
    u32 x;
    u32 y;

    if (!RadioPriority_ShouldBlockBgmChange())
    {
        FillBgTilemapBufferRect(
            0,
            0,
            BATTLE_RADIO_DISPLAY_X,
            BATTLE_RADIO_DISPLAY_Y,
            BATTLE_RADIO_DISPLAY_WIDTH,
            BATTLE_RADIO_DISPLAY_HEIGHT,
            0
        );
        CopyBgTilemapBufferToVram(0);
        return;
    }

    LoadBgTiles(
        0,
        sBattleRadioDisplayGfx,
        sizeof(sBattleRadioDisplayGfx),
        BATTLE_RADIO_DISPLAY_TILE_BASE
    );
    LoadPalette(
        sBattleRadioDisplayPal,
        BG_PLTT_ID(BATTLE_RADIO_DISPLAY_PAL_NUM),
        PLTT_SIZE_4BPP
    );

    for (y = 0; y < BATTLE_RADIO_DISPLAY_HEIGHT; y++)
    {
        for (x = 0; x < BATTLE_RADIO_DISPLAY_WIDTH; x++)
        {
            u16 entry = sBattleRadioDisplayMap[
                (BATTLE_RADIO_DISPLAY_SRC_Y + y) * BATTLE_RADIO_DISPLAY_SRC_WIDTH
                + BATTLE_RADIO_DISPLAY_SRC_X + x
            ];
            u16 tile = entry & 0x03FF;

            if (tile != 0)
                entry = (entry & ~0x03FF) | (BATTLE_RADIO_DISPLAY_TILE_BASE + tile);

            tiles[y * BATTLE_RADIO_DISPLAY_WIDTH + x] = entry;
        }
    }

    CopyToBgTilemapBufferRect_ChangePalette(
        0,
        tiles,
        BATTLE_RADIO_DISPLAY_X,
        BATTLE_RADIO_DISPLAY_Y,
        BATTLE_RADIO_DISPLAY_WIDTH,
        BATTLE_RADIO_DISPLAY_HEIGHT,
        BATTLE_RADIO_DISPLAY_PAL_NUM
    );
    CopyBgTilemapBufferToVram(0);
}

static void OpenRadioFromBattle(u32 battler)
{
    if (!gPaletteFade.active)
    {
        gBattlerInMenuId = battler;
        gBattlerControllerFuncs[battler] = PlayerHandleChooseAction;

        FreeAllWindowBuffers();

        // Radio's loader is state-driven; battle can leave gMain.state elsewhere.
        gMain.state = 0;
        Radio_Open(ReshowBattleScreenAfterMenu);
    }
}
'''

INPUT_HOOK = r'''
    // HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2
    // Active only on the main Battle / Bag / Pokemon / Run command screen.
    if (!(gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_RECORDED)))
    {
        if (RadioPriority_ShouldBlockBgmChange())
        {
            if (JOY_NEW(START_BUTTON))
            {
                RadioPriority_NextTrack();
                return;
            }
            else if (JOY_NEW(SELECT_BUTTON))
            {
                RadioPriority_PreviousTrack();
                return;
            }
        }

        // Raw L is intentional: with Options L=A, normal input may mirror L into A.
        // Catch physical L before the ordinary A_BUTTON action chain.
        if (gMain.newKeysRaw & L_BUTTON)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            gBattlerInMenuId = battler;
            gBattlerControllerFuncs[battler] = OpenRadioFromBattle;
            return;
        }
    }

'''

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def find_function_span(text, name):
    m = re.search(
        r'static\s+void\s+' + re.escape(name) + r'\s*\([^\)]*\)\s*\{',
        text
    )
    if not m:
        return None

    brace = text.find("{", m.start())
    depth = 0
    i = brace
    in_string = in_char = in_line = in_block = False
    escaped = False

    while i < len(text):
        c = text[i]
        n = text[i + 1] if i + 1 < len(text) else ""

        if in_line:
            if c == "\n":
                in_line = False
            i += 1
            continue
        if in_block:
            if c == "*" and n == "/":
                in_block = False
                i += 2
            else:
                i += 1
            continue
        if in_string:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == '"':
                in_string = False
            i += 1
            continue
        if in_char:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == "'":
                in_char = False
            i += 1
            continue

        if c == "/" and n == "/":
            in_line = True
            i += 2
            continue
        if c == "/" and n == "*":
            in_block = True
            i += 2
            continue
        if c == '"':
            in_string = True
            i += 1
            continue
        if c == "'":
            in_char = True
            i += 1
            continue

        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                return m.start(), i + 1

        i += 1

    return None

def strip_old_media_hook(func):
    old_tag = "HLW_BATTLE_RADIO_MEDIA_KEYS_V1_1"
    pos = func.find(old_tag)
    if pos < 0:
        return func

    line_start = func.rfind("\n", 0, pos) + 1
    a_pos = func.find("    if (JOY_NEW(A_BUTTON))", pos)
    if a_pos < 0:
        die("Achei V1.1, mas nao achei A_BUTTON depois dele.")
    return func[:line_start] + func[a_pos:]

def ensure_externs(text):
    missing = [line for line in EXTERN_LINES if line not in text]
    if not missing:
        return text

    anchor = re.search(r'^static void PlayerHandleLoadMonSprite', text, re.M)
    if not anchor:
        die("Nao achei bloco PlayerHandle*.")
    return text[:anchor.start()] + "\n".join(missing) + "\n\n" + text[anchor.start():]

def ensure_asset_decls(text):
    if "sBattleRadioDisplayGfx" in text:
        return text

    anchor = re.search(r'^static void PlayerHandleLoadMonSprite', text, re.M)
    if not anchor:
        die("Nao achei ponto para assets.")
    return text[:anchor.start()] + ASSET_DECLS + "\n" + text[anchor.start():]

def ensure_forward_decls(text):
    lines = []
    if "static void BattleRadioDisplay_Update(void);" not in text:
        lines.append("static void BattleRadioDisplay_Update(void);")
    if "static void OpenRadioFromBattle(u32 battler);" not in text:
        lines.append("static void OpenRadioFromBattle(u32 battler);")
    if not lines:
        return text

    anchor = re.search(r'^static void PlayerBufferRunCommand', text, re.M)
    if not anchor:
        die("Nao achei PlayerBufferRunCommand.")
    return text[:anchor.start()] + "\n".join(lines) + "\n" + text[anchor.start():]

def ensure_helpers(text):
    if "static void BattleRadioDisplay_Update(void)\n{" in text:
        return text

    anchor = text.find("static void HandleChooseActionAfterDma3")
    if anchor < 0:
        die("Nao achei HandleChooseActionAfterDma3.")
    return text[:anchor] + HELPERS + "\n" + text[anchor:]

def patch_input_hook(text):
    span = find_function_span(text, "HandleInputChooseAction")
    if span is None:
        die("Nao achei HandleInputChooseAction.")

    fstart, fend = span
    func = text[fstart:fend]

    for token in ("JOY_NEW(A_BUTTON)", "JOY_NEW(START_BUTTON)", "B_LAST_USED_BALL"):
        if token not in func:
            die("HandleInputChooseAction inesperado; faltou " + token)

    func = strip_old_media_hook(func)

    # Rerun/partial V2 cleanup.
    pos = func.find(PATCH_TAG)
    if pos >= 0:
        line_start = func.rfind("\n", 0, pos) + 1
        a_pos = func.find("    if (JOY_NEW(A_BUTTON))", pos)
        if a_pos < 0:
            die("V2 parcial sem A_BUTTON posterior.")
        func = func[:line_start] + func[a_pos:]

    a_pos = func.find("    if (JOY_NEW(A_BUTTON))")
    if a_pos < 0:
        die("Nao achei ponto seguro antes de A_BUTTON.")

    func = func[:a_pos] + INPUT_HOOK + func[a_pos:]
    return text[:fstart] + func + text[fend:]

def patch_action_screen_draw(text):
    span = find_function_span(text, "HandleChooseActionAfterDma3")
    if span is None:
        die("Nao achei HandleChooseActionAfterDma3.")

    fstart, fend = span
    func = text[fstart:fend]
    if "BattleRadioDisplay_Update();" in func:
        return text

    anchor = "        gBattle_BG0_Y = DISPLAY_HEIGHT;\n"
    if anchor not in func:
        die("Nao achei BG0_Y = DISPLAY_HEIGHT.")

    func = func.replace(anchor, anchor + "        BattleRadioDisplay_Update();\n", 1)
    return text[:fstart] + func + text[fend:]

def verify_radio(text):
    required = (
        "bool8 RadioPriority_ShouldBlockBgmChange(void)",
        "bool8 RadioPriority_NextTrack(void)",
        "bool8 RadioPriority_PreviousTrack(void)",
        "void Radio_Open(MainCallback returnCallback)",
    )
    missing = [x for x in required if x not in text]
    if missing:
        die("src/radio.c nao possui a API esperada:\n  " + "\n  ".join(missing))

def verify_battle_layout(text):
    ranges = []
    for block in re.findall(r'\[[^\]]+\]\s*=\s*\{(.*?)\n\s*\}', text, re.S):
        mb = re.search(r'\.baseBlock\s*=\s*(0x[0-9A-Fa-f]+)', block)
        mw = re.search(r'\.width\s*=\s*(\d+)', block)
        mh = re.search(r'\.height\s*=\s*(\d+)', block)
        if mb and mw and mh:
            base = int(mb.group(1), 16)
            end = base + int(mw.group(1)) * int(mh.group(1)) - 1
            ranges.append((base, end))

    if ranges:
        highest = max(end for _, end in ranges)
        if highest >= 0x3C0:
            die(f"Battle windows ja chegam ate 0x{highest:X}; 0x3C0 nao esta livre.")
        print(f"Battle window tiles OK: max 0x{highest:X}; Radio usa 0x3C0..0x3DF.")

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    controller = root / "src/battle_controller_player.c"
    battle_main = root / "src/battle_main.c"
    battle_bg = root / "src/battle_bg.c"
    radio = root / "src/radio.c"
    gfx_dir = root / "graphics/battle_interface"

    for p in (controller, battle_main, battle_bg, radio):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    if "RadioPriority_MaintainBgm();" not in battle_main.read_text():
        die("battle_main.c nao possui RadioPriority_MaintainBgm().")

    verify_radio(radio.read_text())
    verify_battle_layout(battle_bg.read_text())

    pack = script_dir / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    asset_data = {}
    with zipfile.ZipFile(pack, "r") as z:
        for dest_name, (asset_name, expected_sha) in ASSETS.items():
            data = z.read(asset_name)
            if hashlib.sha256(data).hexdigest() != expected_sha:
                die("SHA invalido: " + asset_name)
            asset_data[dest_name] = data

    if len(asset_data["radiodisplay.bin"]) != 1200:
        die("radiodisplay.bin nao tem 1200 bytes.")
    if len(asset_data["radiodisplay.4bpp"]) != 1024:
        die("radiodisplay.4bpp nao tem 1024 bytes.")
    if len(asset_data["radiodisplay.gbapal"]) != 32:
        die("radiodisplay.gbapal nao tem 32 bytes.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"battle_radio_ui_l_open_v2_{stamp}"

    touched = [controller] + [gfx_dir / n for n in ASSETS]
    originals = {}

    for p in touched:
        if p.exists():
            dst = bdir / p.relative_to(root)
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(p, dst)
            originals[p] = p.read_bytes()
        else:
            originals[p] = None

    def rollback():
        print("\n[ROLLBACK] Restaurando estado anterior...")
        for p, data in originals.items():
            if data is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(data)

    try:
        text = controller.read_text()
        text = ensure_externs(text)
        text = ensure_asset_decls(text)
        text = ensure_forward_decls(text)
        text = ensure_helpers(text)
        text = patch_input_hook(text)
        text = patch_action_screen_draw(text)

        for token in (
            PATCH_TAG,
            "RadioPriority_NextTrack();",
            "RadioPriority_PreviousTrack();",
            "gMain.newKeysRaw & L_BUTTON",
            "Radio_Open(ReshowBattleScreenAfterMenu);",
            "BattleRadioDisplay_Update();",
            'INCBIN_U32("graphics/battle_interface/radiodisplay.4bpp")',
        ):
            if token not in text:
                die("Verificacao final falhou; faltou " + token)

        gfx_dir.mkdir(parents=True, exist_ok=True)
        for name, data in asset_data.items():
            (gfx_dir / name).write_bytes(data)

        controller.write_text(text)

        for rel in (
            "build/modern/src/battle_controller_player.o",
            "build/modern/src/battle_controller_player.d",
        ):
            p = root / rel
            if p.exists():
                print("rm", rel)
                p.unlink()

        print("\n============================================================")
        print("BATTLE RADIO UI + L OPEN V2 INSTALADO")
        print("============================================================")
        print("Tela principal Battle / Bag / Pokemon / Run:")
        print("  START  = proxima musica (Priority ON + Radio tocando)")
        print("  SELECT = musica anterior (Priority ON + Radio tocando)")
        print("  L      = abre o Radio")
        print("")
        print("L usa input RAW, entao nao cai como A mesmo com L=A.")
        print("")
        print("radiodisplay:")
        print("  - canto superior direito")
        print("  - x=120..239 / y=0..15")
        print("  - aparece somente com Priority ON + Radio tocando")
        print("")
        print("Fight / target / Bag aberta / Party aberta ficam intocados.")
        print("Link/Recorded battle ficam intocados neste V2.")
        print("")
        print("Este installer NAO chama make e NAO usa make -B.")
        print("Backup:", bdir)
        print("\nAgora rode SOMENTE:")
        print("  make -j8")

    except Exception:
        rollback()
        raise

if __name__ == "__main__":
    main()
