#!/bin/sh
# Explicit two-process battery-backed test. No ROM or .sav in the checkout is
# ever launched or modified. Artifacts are retained in a fresh /tmp directory.
# Requires a battery-aware mGBA rom-test frontend via ROMTEST=/absolute/path.
# The bundled upstream frontend does not call mCoreAutoloadSave, so its expected
# result is a clear failure after the writer passes without creating a battery.
# See tools/mgba/hlw-battery-save.patch for the minimal pinned-source change.
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
source_elf=${1:-"$repo_dir/Pokemon_HLW-test.elf"}
rom_test=${ROMTEST:-"$repo_dir/tools/mgba/mgba-rom-test"}
objcopy=${OBJCOPY:-arm-none-eabi-objcopy}
patch_elf="$repo_dir/tools/patchelf/patchelf"

test -f "$source_elf"
test -x "$rom_test"
test -x "$patch_elf"
command -v "$objcopy" >/dev/null
command -v timeout >/dev/null
command -v sha256sum >/dev/null
command -v rg >/dev/null
command -v stdbuf >/dev/null
command -v head >/dev/null

cold_dir=$(mktemp -d /tmp/hlw-cold-boot.XXXXXX)
printf 'Private cold-boot artifacts: %s\n' "$cold_dir"
cp "$source_elf" "$cold_dir/cold-boot.elf"

run_phase()
{
    phase=$1
    "$patch_elf" "$cold_dir/cold-boot.elf" \
        gTestRunnerHeadless '\x01' gTestRunnerSkipIsFail '\x01' \
        gTestRunnerN '\x01' gTestRunnerI '\x00' \
        gTestRunnerArgv "HLW cold boot $phase\0"
    "$objcopy" -O binary --gap-fill 0xFF "$cold_dir/cold-boot.elf" "$cold_dir/cold-boot.gba"
    # A new invocation is a separate OS process; no savestate is supplied.
    (cd "$cold_dir" && timeout 120 stdbuf -oL "$rom_test" -l15 -ClogLevel.gba.dma=16 \
        -C "savegamePath=$cold_dir" -S 3 -Rr0 \
        "$cold_dir/cold-boot.gba") >"$cold_dir/$phase.log" 2>&1 || {
        printf 'Cold-boot %s failed; inspect %s/%s.log\n' "$phase" "$cold_dir" "$phase" >&2
        exit 1
    }
    rg -q ':P.*PASS' "$cold_dir/$phase.log"
}

run_phase writer
battery_file="$cold_dir/cold-boot.sav"
test -f "$battery_file" || {
    printf 'Writer did not flush the expected private battery file: %s\n' "$battery_file" >&2
    printf 'Set ROMTEST to a battery-aware runner; see tools/mgba/hlw-battery-save.patch.\n' >&2
    exit 1
}
# mGBA optionally appends its 16-byte GBASavedataRTCBuffer to the raw flash.
# Compare only the actual 128 KiB cartridge flash, not wall-clock RTC metadata.
case "$(wc -c <"$battery_file")" in
    131072|131088) ;;
    *) printf 'Unexpected battery size: %s\n' "$battery_file" >&2; exit 1 ;;
esac
rg -q 'HLW_COLD_WRITER_COMMITTED generation=2' "$cold_dir/writer.log"
writer_hash=$(head -c 131072 "$battery_file" | sha256sum | awk '{print $1}')

run_phase reader
rg -q 'HLW_COLD_READER_VERIFIED generation=2' "$cold_dir/reader.log"
reader_hash=$(head -c 131072 "$battery_file" | sha256sum | awk '{print $1}')
test "$writer_hash" = "$reader_hash"
writer_crcs=$(awk '/HLW_COLD_CRC/ {sub(".*HLW_COLD_CRC ", ""); print}' "$cold_dir/writer.log")
reader_crcs=$(awk '/HLW_COLD_CRC/ {sub(".*HLW_COLD_CRC ", ""); print}' "$cold_dir/reader.log")
test "$(printf '%s\n' "$writer_crcs" | wc -l)" -eq 5
test "$writer_crcs" = "$reader_crcs"
printf 'PASS: separate writer/reader processes; five complete bank CRCs and 30 HOF teams agree.\n'
printf 'Battery: %s, unchanged 131072-byte flash SHA-256 %s\n' "$battery_file" "$reader_hash"
printf '%s\n' "$reader_crcs"
