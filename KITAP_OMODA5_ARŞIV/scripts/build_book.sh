#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CHAPTER_DIR="${ROOT_DIR}/chapters"
BOOK_FILE="${ROOT_DIR}/book.md"
EXPORT_DIR="${ROOT_DIR}/exports"
PDF_FILE="${EXPORT_DIR}/omoda5_teknik_arsiv.pdf"

mkdir -p "${EXPORT_DIR}"

# book.md zaten var; bu script link, bolum ve export dogrulamasi yapar.
for f in \
  01_proje_ve_cihaz_profili.md \
  02_sistem_mimarisi_ve_overlay_launcher.md \
  03_split_screen_ui_ve_medya_navigasyon.md \
  04_minimal_gms_operasyon_kitabi.md \
  05_ota_recovery_fastboot_geri_donus.md \
  06_adb_komut_kartlari_ve_saha_notlari.md \
  07_risk_matrisi_ve_dogrulama_checklist.md; do
  [ -f "${CHAPTER_DIR}/${f}" ] || { echo "Missing chapter: ${f}"; exit 1; }
done

if command -v pandoc >/dev/null 2>&1; then
  pandoc "${BOOK_FILE}" -o "${PDF_FILE}"
  echo "PDF exported: ${PDF_FILE}"
else
  echo "pandoc not found. PDF export skipped."
  echo "Install pandoc then rerun this script for PDF output."
fi

echo "Book build check complete."
