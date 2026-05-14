#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
OUT_DIR="${ROOT_DIR}/KITAP_OMODA5_ARŞIV/assets"
RAW_OUT="${OUT_DIR}/ADB_FASTBOOT_TUM_SATIRLAR.md"
INDEX_OUT="${OUT_DIR}/ADB_FASTBOOT_KAYNAK_OZETI.md"

mkdir -p "$OUT_DIR"

cd "$ROOT_DIR"

TMP_ALL="$(mktemp)"
find . -maxdepth 1 -type f \( -name '*.md' -o -name '*.txt' -o -name '*.log' \) -print0 \
  | xargs -0 rg -n --no-heading -e '\badb\b' -e '\bfastboot\b' > "$TMP_ALL"

TOTAL_LINES="$(wc -l < "$TMP_ALL" | tr -d ' ')"
TOTAL_FILES="$(cut -d: -f1 "$TMP_ALL" | sort -u | wc -l | tr -d ' ')"

{
  echo "# ADB/Fastboot Tum Satirlar"
  echo
  echo "- Uretim zamani: $(date '+%Y-%m-%d %H:%M:%S %z')"
  echo "- Toplam satir: ${TOTAL_LINES}"
  echo "- Kaynak dosya sayisi: ${TOTAL_FILES}"
  echo "- Kriter: satirda 'adb' veya 'fastboot' gecmesi"
  echo
  echo "Bu dosya bilgi kaybi olmamasi icin deduplikasyon yapmadan satirlari oldugu gibi listeler."
  echo
  echo '```text'
  cat "$TMP_ALL"
  echo '```'
} > "$RAW_OUT"

{
  echo "# ADB/Fastboot Kaynak Ozeti"
  echo
  echo "- Uretim zamani: $(date '+%Y-%m-%d %H:%M:%S %z')"
  echo "- Toplam satir: ${TOTAL_LINES}"
  echo
  echo "## Dosya Bazli Dagilim"
  echo
  awk -F: '{count[$1]++} END {for (f in count) printf "- %s: %d\n", f, count[f]}' "$TMP_ALL" | sort
} > "$INDEX_OUT"

rm -f "$TMP_ALL"

echo "Generated:"
echo "- $RAW_OUT"
echo "- $INDEX_OUT"
