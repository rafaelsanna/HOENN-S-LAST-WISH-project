#!/usr/bin/env python3
"""Regression tests for configured type exports and the refreshed WishDex.

Run after generation: python3 tools/wishdex/test_generate.py
"""

import hashlib
import json
import unittest
from html.parser import HTMLParser
from urllib.parse import parse_qs, urlsplit

from PIL import Image

import generate


class ScriptSources(HTMLParser):
    def __init__(self):
        super().__init__()
        self.sources = []

    def handle_starttag(self, tag, attrs):
        if tag == "script":
            source = dict(attrs).get("src")
            if source is not None:
                self.sources.append(source)


class TypeNamesTests(unittest.TestCase):
    def test_single_type(self):
        self.assertEqual(generate.type_names("MON_TYPES(TYPE_BUG)"), ["Bug"])

    def test_two_types(self):
        self.assertEqual(generate.type_names("MON_TYPES(TYPE_NORMAL, TYPE_GRASS)"),
                         ["Normal", "Grass"])

    def test_true_ternary_excludes_inactive_type(self):
        self.assertEqual(generate.type_names(
            "MON_TYPES(TYPE_BUG, (5 >= 5 ? TYPE_FAIRY : TYPE_PSYCHIC))"),
            ["Bug", "Fairy"])

    def test_false_ternary_excludes_inactive_type(self):
        self.assertEqual(generate.type_names(
            "MON_TYPES(TYPE_BUG, (4 >= 5 ? TYPE_FAIRY : TYPE_PSYCHIC))"),
            ["Bug", "Psychic"])

    def test_nested_ternary_uses_only_selected_branch(self):
        self.assertEqual(generate.type_names(
            "MON_TYPES(TYPE_BUG, (1 ? (0 ? TYPE_PSYCHIC : TYPE_FAIRY) : TYPE_NORMAL))"),
            ["Bug", "Fairy"])

    def test_inactive_unknown_token_is_not_exported_or_validated(self):
        self.assertEqual(generate.type_names(
            "MON_TYPES(TYPE_BUG, (1 ? TYPE_FAIRY : TYPE_NOT_A_REAL_TYPE))"),
            ["Bug", "Fairy"])

    def test_duplicate_monotype_is_not_displayed_twice(self):
        self.assertEqual(generate.type_names("MON_TYPES(TYPE_BUG, TYPE_BUG)"), ["Bug"])
        self.assertEqual(generate.type_names(
            "MON_TYPES(TYPE_BUG, (0 ? TYPE_FAIRY : TYPE_BUG))"), ["Bug"])

    def test_whitespace_and_direct_braced_game_types(self):
        self.assertEqual(generate.type_names(" MON_TYPES(\n TYPE_PSYCHIC, TYPE_GRASS \n) "),
                         ["Psychic", "Grass"])
        self.assertEqual(generate.type_names("{ TYPE_FLYING, TYPE_FAIRY }"),
                         ["Flying", "Fairy"])
        self.assertEqual(generate.type_names("{ TYPE_NORMAL, TYPE_NORMAL }"), ["Normal"])

    def test_wrong_wrapper_or_argument_count_is_rejected(self):
        for expression in ("", "TYPE_BUG", "OTHER_TYPES(TYPE_BUG)", "MON_TYPES()", "{}",
                           "MON_TYPES(TYPE_BUG, TYPE_FAIRY, TYPE_PSYCHIC)",
                           "{ TYPE_BUG, TYPE_FAIRY, TYPE_PSYCHIC }"):
            with self.subTest(expression=expression), self.assertRaises(ValueError):
                generate.type_names(expression)

    def test_unknown_none_and_malformed_selected_types_are_rejected(self):
        for expression in ("MON_TYPES(TYPE_NO_SUCH_TYPE)", "MON_TYPES(TYPE_NONE)",
                           "MON_TYPES(17)", "MON_TYPES(TYPE_BUG, TYPE_FAIRY) trailing",
                           "MON_TYPES(TYPE_BUG,)", "MON_TYPES(TYPE_BUG, (1 ? TYPE_FAIRY))"):
            with self.subTest(expression=expression), self.assertRaises((ValueError, SyntaxError)):
                generate.type_names(expression)


class ContentVersionTests(unittest.TestCase):
    def test_versions_are_stable_and_change_with_content(self):
        path = "images/wishdex/101.png"
        contents = b"rendered RGBA pixels"
        expected = path + "?v=" + hashlib.sha256(contents).hexdigest()[:12]
        self.assertEqual(generate.versioned_url(path, contents), expected)
        self.assertEqual(generate.versioned_url(path, bytes(contents)), expected)
        self.assertNotEqual(generate.versioned_url(path, contents + b" changed"), expected)


class CurrentGameExportTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.species, _, _, _, _, cls.moves, cls.items = generate.game_tables()
        contents = (generate.ROOT / "wishdex-data.js").read_text()
        cls.exported = json.loads(contents.split("window.WISHDEX_DATA = ", 1)[1].rstrip().removesuffix(";"))

    def test_manifest_appends_deer_without_reassigning_existing_ids(self):
        self.assertEqual(len(generate.MANIFEST), 102)
        self.assertEqual(generate.MANIFEST[-2:], ["SPECIES_STANTLER", "SPECIES_WYRDEER"])
        self.assertEqual(generate.MANIFEST[89], "SPECIES_SALAMENCE")
        self.assertEqual(generate.MANIFEST[96], "SPECIES_QUAGSIRE")

    def test_known_species_types_match_the_active_game(self):
        expected = {
            "SPECIES_RALTS": ["Bug"],
            "SPECIES_KIRLIA": ["Bug", "Ground"],
            "SPECIES_GARDEVOIR": ["Bug", "Fairy"],
            "SPECIES_STANTLER": ["Normal", "Grass"],
            "SPECIES_WYRDEER": ["Psychic", "Grass"],
        }
        for slot, types in expected.items():
            with self.subTest(species=slot):
                self.assertEqual(generate.type_names(generate.field(self.species[slot], "types")), types)

    def test_all_exported_names_and_types_match_the_current_game(self):
        self.assertEqual(len(self.exported), len(generate.MANIFEST))
        for number, (slot, entry) in enumerate(zip(generate.MANIFEST, self.exported), 1):
            with self.subTest(species=slot):
                self.assertEqual(entry["id"], number)
                if slot in generate.HIDDEN:
                    self.assertEqual(set(entry), {"hidden", "id", "sprite"})
                    self.assertTrue(entry["hidden"])
                    continue
                block = self.species[slot]
                self.assertEqual(entry["name"], generate.strings(generate.field(block, "speciesName")))
                self.assertEqual(entry["types"], generate.type_names(generate.field(block, "types")))
                self.assertIn(len(entry["types"]), (1, 2))
                self.assertEqual(len(entry["types"]), len(set(entry["types"])))

    def test_stantler_evolution_matches_the_game_condition(self):
        evolution = generate.evolution_details(
            generate.field(self.species["SPECIES_STANTLER"], "evolutions"),
            self.species, self.moves, self.items)
        self.assertEqual(evolution,
                         [{"target": "Wyrdeer", "method": "Level up after using Psyshield Bash 20 times"}])
        self.assertEqual(len(self.exported), len(generate.MANIFEST), "WishDex needs regeneration")
        self.assertEqual(self.exported[100]["evolutions"], evolution)

    def test_sprite_versions_match_the_exported_pixels(self):
        for entry in self.exported:
            for key in ("sprite", "frameSprite", "shinySprite"):
                source = entry.get(key)
                if not source:
                    continue
                with self.subTest(entry=entry["id"], image=key):
                    url = urlsplit(source)
                    self.assertEqual((url.scheme, url.netloc, url.fragment), ("", "", ""))
                    self.assertTrue(url.path.startswith("images/wishdex/"))
                    self.assertNotIn("?", url.path, "cache query is not part of the image filename")
                    destination = generate.ROOT / url.path
                    self.assertTrue(destination.is_file(), "versioned URL resolves a real exported image")
                    with Image.open(destination) as image:
                        pixels = image.convert("RGBA").tobytes()
                        self.assertEqual(image.size, (64, 64))
                    self.assertEqual(parse_qs(url.query),
                                     {"v": [hashlib.sha256(pixels).hexdigest()[:12]]})

    def test_data_script_version_matches_generated_javascript(self):
        scripts = ScriptSources()
        scripts.feed((generate.ROOT / "wishdex.html").read_text())
        data_scripts = [urlsplit(source) for source in scripts.sources
                        if urlsplit(source).path == "wishdex-data.js"]
        self.assertEqual(len(data_scripts), 1, "page loads one generated data script")
        url = data_scripts[0]
        self.assertEqual((url.scheme, url.netloc, url.fragment), ("", "", ""))
        self.assertNotIn("?", url.path, "cache query is not part of the data filename")
        destination = generate.ROOT / url.path
        self.assertTrue(destination.is_file())
        self.assertEqual(parse_qs(url.query),
                         {"v": [hashlib.sha256(destination.read_bytes()).hexdigest()[:12]]})


if __name__ == "__main__":
    unittest.main()
