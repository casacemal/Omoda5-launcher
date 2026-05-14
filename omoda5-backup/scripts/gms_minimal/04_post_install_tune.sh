#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "${SCRIPT_DIR}/common.sh"

require_cmd adb
ensure_adb_device

SERIAL="$(get_serial)"
require_su "$SERIAL"
REPORT_DIR="$(mk_report_dir)"
REPORT_FILE="${REPORT_DIR}/post_tune_${TS}.txt"

OPTIONAL_REMOVE_PACKAGES=(
  com.google.android.apps.maps
  com.android.chrome
  com.google.android.youtube
  com.google.android.apps.photos
  com.google.android.apps.docs
  com.google.android.gm
  com.google.android.apps.tachyon
  com.google.android.googlequicksearchbox
  com.google.android.apps.fitness
)

pkg_exists() {
  local pkg="$1"
  adb_shell_s "$SERIAL" "pm list packages ${pkg}" | grep -q "$pkg"
}

{
  echo "=== Post-install tuning report ==="
  echo "Timestamp: ${TS}"
  echo "Serial: ${SERIAL}"
  echo
  echo "== baseline google packages =="
  adb_shell_s "$SERIAL" "pm list packages | grep -E 'google|vending' || true"
  echo
  echo "== applying conservative tuning =="
} | tee "$REPORT_FILE"

adb_shell_s "$SERIAL" "settings put global master_sync_enabled 0" | tee -a "$REPORT_FILE" || true
adb_shell_s "$SERIAL" "settings put global ble_scan_always_enabled 0" | tee -a "$REPORT_FILE" || true
adb_shell_s "$SERIAL" "settings put global wifi_scan_always_enabled 0" | tee -a "$REPORT_FILE" || true

for pkg in "${OPTIONAL_REMOVE_PACKAGES[@]}"; do
  if pkg_exists "$pkg"; then
    log "Removing optional package for user 0: ${pkg}"
    adb_shell_s "$SERIAL" "pm uninstall --user 0 ${pkg}" | tee -a "$REPORT_FILE" || true
  fi
done

{
  echo
  echo "== google package state after tuning =="
  adb_shell_s "$SERIAL" "pm list packages | grep -E 'google|vending' || true"
  echo
  echo "== google memory snapshot =="
  adb_shell_s "$SERIAL" "dumpsys meminfo | grep -i google || true"
} | tee -a "$REPORT_FILE"

log "Post-install tuning complete. Report: $REPORT_FILE"
