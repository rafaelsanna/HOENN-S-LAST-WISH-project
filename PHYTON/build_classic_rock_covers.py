#!/usr/bin/env python3
"""Build the Classic Rock Radio album-art sprites from public source files.

The game uses 4bpp OBJ sprites, so each output is a 64x64 indexed PNG.  Its
palette is deliberately arranged as ``#6ABE30`` at index 0: OBJ palette index
0 is transparent, leaving the album art itself free to use the remaining 15
colors.  The script is safe to rerun; valid outputs are merely checked and are
not downloaded again.

The source links deliberately use Wikimedia's Special:FilePath endpoint.  It
redirects to the current public file version while keeping the source mapping
readable here for future asset refreshes.
"""

from io import BytesIO
import json
from pathlib import Path
import shutil
import subprocess
import sys
import time
from urllib.error import HTTPError, URLError
from urllib.parse import quote
from urllib.request import Request, urlopen

from PIL import Image, ImageOps


ROOT = Path(__file__).resolve().parent.parent
COVERS_DIR = ROOT / "graphics" / "radio" / "covers"
GREEN = (106, 190, 48)  # #6ABE30: GBA OBJ transparent palette entry.
USER_AGENT = "Pokemon-HLWs-Last-Wish-cover-builder/1.0"

# Track-to-cover links are documented in PHYTON/link_radio_album_covers.py.
# These source files are public Wikimedia files; this tool only stores the
# derived 64x64 palette sprites in the repository.
SOURCES = {
    "freewheelin": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "Bob_Dylan_-_The_Freewheelin%27_Bob_Dylan.jpg"
    ),
    "highway61revisited": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "Bob_Dylan_-_Highway_61_Revisited.jpg"
    ),
    "bringingitallbackhome": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "Bringing_It_All_Back_Home.jpg"
    ),
    "patgarrett": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "Bob_Dylan_-_Pat_Garrett_%26_Billy_the_Kid.jpg"
    ),
    "areyouexperienced": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "Are_You_Experienced_-_US_cover-edit.jpg"
    ),
    # Asking Commons for a thumbnail keeps this vector source rasterized before
    # Pillow sees it; the fallback below also supports an SVG response.
    "thewall": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "The_Wall_Cover.svg?width=512"
    ),
    "wishyouwerehere": (
        "wikipedia-summary:Wish You Were Here (Pink Floyd album)"
    ),
    "darksideofthemoon": (
        "https://commons.wikimedia.org/wiki/Special:FilePath/"
        "The_Dark_Side_Of_The_Moon.jpg"
    ),
    "divisionbell": (
        "https://upload.wikimedia.org/wikipedia/en/6/6e/"
        "Pink_Floyd_-_Division_Bell.jpg"
    ),
}


def die(message):
    raise SystemExit(f"ERROR: {message}")


def is_valid_output(path):
    """Return True only for the exact GBA-friendly output format."""
    try:
        with Image.open(path) as image:
            image.load()
            if image.mode != "P" or image.size != (64, 64):
                return False
            colors = image.getcolors(maxcolors=17)
            if colors is None or len(colors) > 16:
                return False
            if not colors or max(index for _, index in colors) > 15:
                return False
            return tuple(image.getpalette()[:3]) == GREEN
    except (OSError, ValueError):
        return False


def download(url):
    request = Request(url, headers={"User-Agent": USER_AGENT})
    # FilePath can perform a couple of redirects.  Download one cover at a
    # time and respect a transient Commons 429 instead of making a burst worse.
    for attempt, delay in enumerate((0, 3, 8, 20), start=1):
        if delay:
            print(f"[WAIT]    Commons rate limit; retrying in {delay}s")
            time.sleep(delay)
        try:
            with urlopen(request, timeout=60) as response:
                return response.read(), response.headers.get_content_type()
        except HTTPError as error:
            if error.code != 429 or attempt == 4:
                raise
        except URLError:
            if attempt == 4:
                raise
    raise AssertionError("unreachable")


def download_wikipedia_summary_cover(title):
    """Resolve a local Wikipedia article's current thumbnail source URL."""
    endpoint = "https://en.wikipedia.org/api/rest_v1/page/summary/" + quote(title)
    data, content_type = download(endpoint)
    if content_type != "application/json":
        die(f"Wikipedia summary for {title!r} did not return JSON")
    summary = json.loads(data)
    image = summary.get("originalimage") or summary.get("thumbnail")
    if not image or "source" not in image:
        die(f"Wikipedia summary for {title!r} has no cover thumbnail")
    url = image["source"]
    print(f"[SOURCE]  {url}")
    return download(url)


def open_source(data, content_type):
    """Open either a normal raster response or a rare SVG FilePath response."""
    if content_type != "image/svg+xml" and not data.lstrip().startswith(b"<svg"):
        with Image.open(BytesIO(data)) as image:
            image.load()
            return image.convert("RGB")

    magick = shutil.which("magick")
    if magick is None:
        die("Commons returned an SVG but ImageMagick ('magick') is unavailable")

    tmp_svg = ROOT / ".classic_rock_cover_source.svg"
    tmp_png = ROOT / ".classic_rock_cover_source.png"
    try:
        tmp_svg.write_bytes(data)
        subprocess.run(
            [magick, str(tmp_svg), "-resize", "512x512", str(tmp_png)],
            check=True,
        )
        with Image.open(tmp_png) as image:
            image.load()
            return image.convert("RGB")
    finally:
        tmp_svg.unlink(missing_ok=True)
        tmp_png.unlink(missing_ok=True)


def make_palette_sprite(image):
    """Fit then quantize to 15 visible colors, preserving green at index 0."""
    fitted = ImageOps.fit(
        image,
        (64, 64),
        method=Image.Resampling.LANCZOS,
        centering=(0.5, 0.5),
    )
    quantized = fitted.quantize(
        colors=15,
        method=Image.Quantize.MEDIANCUT,
        dither=Image.Dither.NONE,
    )

    # Reserve OBJ-transparent palette entry 0; every visible index shifts up.
    remapped = quantized.point([index + 1 for index in range(256)])
    source_palette = quantized.getpalette()
    palette = list(GREEN) + source_palette[:45] + [0] * (768 - 48)
    remapped.putpalette(palette)
    return remapped


def build_cover(stem, url):
    output = COVERS_DIR / f"{stem}.png"
    if is_valid_output(output):
        print(f"[OK]      {output.relative_to(ROOT)}")
        return False

    print(f"[FETCH]   {stem} <- {url}")
    if url.startswith("wikipedia-summary:"):
        data, content_type = download_wikipedia_summary_cover(
            url.removeprefix("wikipedia-summary:")
        )
    else:
        data, content_type = download(url)
    source = open_source(data, content_type)
    output.parent.mkdir(parents=True, exist_ok=True)
    make_palette_sprite(source).save(output, format="PNG", bits=4, optimize=False)

    if not is_valid_output(output):
        die(f"{output.relative_to(ROOT)} was not written as indexed 64x64/16-color PNG")
    print(f"[BUILT]   {output.relative_to(ROOT)}")
    return True


def main():
    changed = sum(build_cover(stem, url) for stem, url in SOURCES.items())
    print(f"\n[OK] Validated {len(SOURCES)} Classic Rock cover(s); rebuilt {changed}.")


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\nInterrupted.")
