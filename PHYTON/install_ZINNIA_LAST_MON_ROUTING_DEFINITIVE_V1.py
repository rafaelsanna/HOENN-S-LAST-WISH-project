#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, os

PATCH_MARKER = "HLW_ZINNIA_LAST_MON_ROUTING_DEFINITIVE_V1"

SONGS = (
    "MUS_ZINNIA_LAST_MON_GBA",
    "MUS_ZINNIA_LAST_MON_METAL",
    "MUS_ZINNIA_LAST_MON_POP",
    "MUS_ZINNIA_LAST_MON_EPIC",
    "MUS_ZINNIA_CHAMPION_GRAND_EPIC",
)

METAL = (
    "TRAINER_BRAWLY_1",
    "TRAINER_BRAWLY",
    "TRAINER_BRAWLY_2",
    "TRAINER_BRAWLY_3",
    "TRAINER_BRAWLY_4",
    "TRAINER_BRAWLY_5",
    "TRAINER_BRAWLY_CASUAL",
)

POP = (
    "TRAINER_FLANNERY_CASUAL",
    "TRAINER_FLANNERY_1",
    "TRAINER_FLANNERY_2",
    "TRAINER_FLANNERY_3",
    "TRAINER_FLANNERY_4",
    "TRAINER_FLANNERY_5",
)

GBA = (
    "TRAINER_TERRA_CASUAL",
    "TRAINER_TERRA_HARD",
    "TRAINER_ROXANNE_2",
    "TRAINER_ROXANNE_3",
    "TRAINER_ROXANNE_4",
    "TRAINER_ROXANNE_5",

    "TRAINER_DEN_CASUAL",
    "TRAINER_WATTSON_1",
    "TRAINER_WATTSON_2",
    "TRAINER_WATTSON_3",
    "TRAINER_WATTSON_4",
    "TRAINER_WATTSON_5",

    "TRAINER_CALENDULA_CASUAL",
    "TRAINER_NORMAN_1",
    "TRAINER_NORMAN_2",
    "TRAINER_NORMAN_3",
    "TRAINER_NORMAN_4",
    "TRAINER_NORMAN_5",

    "TRAINER_TAKA_CASUAL",
    "TRAINER_WINONA_1",
    "TRAINER_WINONA_2",
    "TRAINER_WINONA_3",
    "TRAINER_WINONA_4",
    "TRAINER_WINONA_5",

    "TRAINER_SOULLUNA_CASUAL",
    "TRAINER_TATE_AND_LIZA_1",
    "TRAINER_TATE_AND_LIZA_2",
    "TRAINER_TATE_AND_LIZA_3",
    "TRAINER_TATE_AND_LIZA_4",
    "TRAINER_TATE_AND_LIZA_5",

    "TRAINER_RIO_CASUAL",
    "TRAINER_JUAN_1",
    "TRAINER_JUAN_2",
    "TRAINER_JUAN_3",
    "TRAINER_JUAN_4",
    "TRAINER_JUAN_5",
)

EPIC_E4 = (
    "TRAINER_SIDNEY",
    "TRAINER_TSUBAKI_HARD_SINGLES",
    "TRAINER_TSUBAKI_HARD_DOUBLES",

    "TRAINER_PHOEBE",
    "TRAINER_PHOEBE_HARD_SINGLES",
    "TRAINER_PHOEBE_HARD_DOUBLES",

    "TRAINER_GLACIA",
    "TRAINER_SARK_HARD_SINGLES",
    "TRAINER_SARK_HARD_DOUBLES",

    "TRAINER_DRAKE",
    "TRAINER_DAEMON_HARD_SINGLES",
    "TRAINER_DAEMON_HARD_DOUBLES",
)

CHAMPION = (
    "TRAINER_WALLACE",
    "TRAINER_STELLA_HARD_HO_TAILWIND",
    # The actual project constant is spelled HAZZARDS (double Z).
    "TRAINER_STELLA_HARD_BALANCE_HAZZARDS",
    "TRAINER_STELLA_HARD_DOUBLES_TROOM",
)

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def require_define(text, name, kind):
    if not re.search(r'^#define\s+' + re.escape(name) + r'\s+\S+', text, re.M):
        die(f"{kind} ausente: {name}")

def make_cases(constants, song):
    lines = []
    for c in constants:
        lines.append(f"        case {c}:")
    lines.append(f"            hlwLastMonSong = {song};")
    lines.append("            break;")
    return "\n".join(lines)

def find_matching_brace(text, open_pos):
    depth = 0
    in_str = False
    in_chr = False
    esc = False
    i = open_pos

    while i < len(text):
        ch = text[i]

        if in_str:
            if esc:
                esc = False
            elif ch == "\\":
                esc = True
            elif ch == '"':
                in_str = False
            i += 1
            continue

        if in_chr:
            if esc:
                esc = False
            elif ch == "\\":
                esc = True
            elif ch == "'":
                in_chr = False
            i += 1
            continue

        if ch == '"':
            in_str = True
        elif ch == "'":
            in_chr = True
        elif ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                return i

        i += 1

    return -1

def patch_battle(text):
    fn_sig = "void UpdateSentPokesToOpponentValue(u32 battler)"
    fn = text.find(fn_sig)
    if fn < 0:
        die("Nao achei UpdateSentPokesToOpponentValue.")

    next_fn = text.find("\nvoid BattleScriptPush(", fn)
    if next_fn < 0:
        die("Nao achei o fim de UpdateSentPokesToOpponentValue.")

    block = text[fn:next_fn]

    if PATCH_MARKER in block:
        print("battle_util.c: routing definitivo ja instalado; mantendo.")
        return text

    switch_sig = "switch (GetTrainerClassFromId(TRAINER_BATTLE_PARAM.opponentA))"
    sw = block.find(switch_sig)
    if sw < 0:
        die(
            "Nao achei o switch antigo de last-mon por Trainer Class. "
            "Nao vou chutar o local do patch."
        )

    open_brace = block.find("{", sw + len(switch_sig))
    if open_brace < 0:
        die("Nao achei a abertura do switch antigo.")

    close_brace = find_matching_brace(block, open_brace)
    if close_brace < 0:
        die("Nao achei o fechamento do switch antigo.")

    old_switch = block[sw:close_brace + 1]
    if "lastMonMusicPlayed" not in old_switch or "PlayBGM" not in old_switch:
        die(
            "O switch encontrado nao parece ser o bloco de musica do ultimo Pokemon. "
            "Abortando por seguranca."
        )

    metal = make_cases(METAL, "MUS_ZINNIA_LAST_MON_METAL")
    pop = make_cases(POP, "MUS_ZINNIA_LAST_MON_POP")
    gba = make_cases(GBA, "MUS_ZINNIA_LAST_MON_GBA")
    epic = make_cases(EPIC_E4, "MUS_ZINNIA_LAST_MON_EPIC")
    champ = make_cases(CHAMPION, "MUS_ZINNIA_CHAMPION_GRAND_EPIC")

    replacement = f'''// {PATCH_MARKER}
    {{
        u16 hlwLastMonSong = 0;

        switch (TRAINER_BATTLE_PARAM.opponentA)
        {{
{metal}

{pop}

{gba}

{epic}

{champ}

        default:
            break;
        }}

        if (hlwLastMonSong != 0 && !gBattleStruct->lastMonMusicPlayed)
        {{
            u8 aliveCount = 0;

            for (int i = 0; i < PARTY_SIZE; i++)
            {{
                if (GetMonData(&gEnemyParty[i], MON_DATA_HP) > 0)
                    aliveCount++;
            }}

            if (aliveCount == 1)
            {{
                PlayBGM(hlwLastMonSong);
                gBattleStruct->lastMonMusicPlayed = TRUE;
            }}
        }}
    }}'''

    new_block = block[:sw] + replacement + block[close_brace + 1:]
    return text[:fn] + new_block + text[next_fn:]

def main():
    root = Path.cwd()

    battle = root / "src/battle_util.c"
    songs_h = root / "include/constants/songs.h"
    opponents_h = root / "include/constants/opponents.h"

    for p in (battle, songs_h, opponents_h):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    song_text = songs_h.read_text(errors="ignore")
    opp_text = opponents_h.read_text(errors="ignore")

    for s in SONGS:
        require_define(song_text, s, "Musica")

    all_trainers = METAL + POP + GBA + EPIC_E4 + CHAMPION
    for t in all_trainers:
        require_define(opp_text, t, "Trainer")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"zinnia_last_mon_routing_definitive_v1_{stamp}"
    backup(battle, root, bdir)
    original = battle.read_bytes()

    try:
        text = battle.read_text()
        text = patch_battle(text)
        battle.write_text(text)
        os.utime(battle, None)

        final = battle.read_text()

        required = [
            PATCH_MARKER,
            "MUS_ZINNIA_LAST_MON_METAL",
            "MUS_ZINNIA_LAST_MON_POP",
            "MUS_ZINNIA_LAST_MON_GBA",
            "MUS_ZINNIA_LAST_MON_EPIC",
            "MUS_ZINNIA_CHAMPION_GRAND_EPIC",
            "TRAINER_TSUBAKI_HARD_SINGLES",
            "TRAINER_DAEMON_HARD_DOUBLES",
            "TRAINER_STELLA_HARD_BALANCE_HAZZARDS",
            "aliveCount == 1",
            "gBattleStruct->lastMonMusicPlayed = TRUE;",
        ]

        for s in required:
            if s not in final:
                die("Verificacao final falhou: " + s)

        for p in (
            root / "build/modern/src/battle_util.o",
            root / "build/modern/src/battle_util.d",
        ):
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("ZINNIA LAST-MON ROUTING DEFINITIVO V1")
        print("============================================================")
        print("RENTON / BRAWLY             -> METAL")
        print("AMATERASU / FLANNERY        -> POP")
        print("DEMAIS GYM LEADERS          -> GBA")
        print("ELITE FOUR (casual + hard)  -> EPIC")
        print("STELLA (casual + 3 hard)    -> ORCHESTRAL EPIC")
        print("")
        print("Routing feito por TRAINER ID real.")
        print("Inclui rematches e random HARD da E4/Champion.")
        print("Backup:", bdir)
        print("\nAgora rode:")
        print("  make -j8")

    except Exception:
        print("\n[ROLLBACK] Restaurando src/battle_util.c...")
        battle.write_bytes(original)
        raise

if __name__ == "__main__":
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
