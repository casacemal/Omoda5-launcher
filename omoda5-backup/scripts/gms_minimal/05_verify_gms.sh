#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "${SCRIPT_DIR}/common.sh"

require_cmd adb
ensure_adb_device

SERIAL="$(get_serial)"
REPORT_DIR="$(mk_report_dir)"
REPORT_FILE="${REPORT_DIR}/verify_${TS}.txt"

REQUIRED_PACKAGES=(
  com.google.android.gsf
  com.google.android.gms
  com.android.vending
)

check_pkg() {
  local pkg="$1"
  adb_shell_s "$SERIAL" "pm list packages ${pkg}" | grep -q "$pkg"
}

{
  echo "=== GMS Verification Report ==="
  echo "Timestamp: ${TS}"
  echo "Serial: ${SERIAL}"
  echo
  echo "== required package check =="
} | tee "$REPORT_FILE"

for pkg in "${REQUIRED_PACKAGES[@]}"; do
  if check_pkg "$pkg"; then
    echo "OK: ${pkg}" | tee -a "$REPORT_FILE"
  else
    echo "MISSING: ${pkg}" | tee -a "$REPORT_FILE"
  fi
done

{
  echo
  echo "== package list (google/vending) =="
  adb_shell_s "$SERIAL" "pm list packages | grep -E 'google|vending' || true"
  echo
  echo "== play store launch smoke test =="
  adb_shell_s "$SERIAL" "monkey -p com.android.vending -c android.intent.category.LAUNCHER 1 || true"
  echo
  echo "== location stack snapshot =="
  adb_shell_s "$SERIAL" "dumpsys location | grep -iE 'fused|gps|network|google' || true"
  echo
  echo "== memory snapshot =="
  adb_shell_s "$SERIAL" "dumpsys meminfo | grep -i google || true"
  echo
  echo "== recent logcat (gms/gsf/vending) =="
  adb_s "$SERIAL" logcat -d | grep -Ei 'gms|gsf|vending|finsky|google play services' | tail -n 120 || true
} | tee -a "$REPORT_FILE"

log "Verification complete. Report: $REPORT_FILE"
