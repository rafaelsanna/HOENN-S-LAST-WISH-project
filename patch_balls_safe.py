import sys
import re

POKEBALLS = [
    "ITEM_STRANGE_BALL", "ITEM_POKE_BALL", "ITEM_GREAT_BALL", "ITEM_ULTRA_BALL",
    "ITEM_MASTER_BALL", "ITEM_PREMIER_BALL", "ITEM_HEAL_BALL", "ITEM_NET_BALL",
    "ITEM_NEST_BALL", "ITEM_DIVE_BALL", "ITEM_DUSK_BALL", "ITEM_TIMER_BALL",
    "ITEM_QUICK_BALL", "ITEM_REPEAT_BALL", "ITEM_LUXURY_BALL", "ITEM_LEVEL_BALL",
    "ITEM_LURE_BALL", "ITEM_MOON_BALL", "ITEM_FRIEND_BALL", "ITEM_LOVE_BALL",
    "ITEM_FAST_BALL", "ITEM_HEAVY_BALL", "ITEM_DREAM_BALL", "ITEM_SAFARI_BALL",
    "ITEM_SPORT_BALL", "ITEM_PARK_BALL", "ITEM_BEAST_BALL", "ITEM_CHERISH_BALL"
]

def patch_items_h(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    out_lines = []
    i = 0
    modified = 0

    while i < len(lines):
        line = lines[i]
        out_lines.append(line)

        for ball in POKEBALLS:
            if re.match(rf'\s*\[{ball}\]\s*=', line):
                j = i
                while j < len(lines) and not re.search(r'\.type\s*=\s*ITEM_USE_BAG_MENU,', lines[j]):
                    j += 1
                if j < len(lines):
                    if j+1 < len(lines) and '.fieldUseFunc' in lines[j+1]:
                        pass
                    else:
                        indent_match = re.match(r'(\s+)\.type', lines[j])
                        indent = indent_match.group(1) if indent_match else '        '
                        new_line = f'{indent}.fieldUseFunc = ItemUseOutOfBattle_ChangePokeball,\n'
                        out_lines.append(new_line)
                        modified += 1
                break
        i += 1

    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(out_lines)

    print(f"✅ Adicionado .fieldUseFunc em {modified} Pokébolas.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python3 patch_balls_safe.py src/data/items.h")
        sys.exit(1)
    patch_items_h(sys.argv[1])
