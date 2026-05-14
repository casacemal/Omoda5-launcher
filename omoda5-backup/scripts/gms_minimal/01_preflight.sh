#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "${SCRIPT_DIR}/common.sh"

require_cmd adb
ensure_adb_device

SERIAL="$(get_serial)"
REPORT_DIR="$(mk_report_dir)"
REPORT_FILE="${REPORT_DIR}/preflight_${TS}.txt"

log "Running preflight checks on device: ${SERIAL}"

{
  echo "=== Preflight Report ==="
  echo "Timestamp: ${TS}"
  echo "Serial: ${SERIAL}"
  echo
  echo "== adb devices =="
  adb devices -l
  echo
  echo "== basic properties =="
  echo "sdk: $(adb_shell_s "$SERIAL" getprop ro.build.version.sdk | tr -d '\r')"
  echo "abi: $(adb_shell_s "$SERIAL" getprop ro.product.cpu.abi | tr -d '\r')"
  echo "model: $(adb_shell_s "$SERIAL" getprop ro.product.model | tr -d '\r')"
  echo "fingerprint: $(adb_shell_s "$SERIAL" getprop ro.build.fingerprint | tr -d '\r')"
  echo "bootmode: $(adb_shell_s "$SERIAL" getprop ro.bootmode | tr -d '\r')"
  echo
  echo "== package baseline =="
  adb_shell_s "$SERIAL" "pm list packages | grep -E 'google|vending' || true"
  echo
  echo "== su check =="
  adb_shell_s "$SERIAL" "su -c 'id'"
  echo
  echo "== recovery path =="
  echo "adb reboot recovery is available; execute manually when ready."
} | tee "$REPORT_FILE"

require_su "$SERIAL"

SDK="$(adb_shell_s "$SERIAL" getprop ro.build.version.sdk | tr -d '\r')"
ABI="$(adb_shell_s "$SERIAL" getprop ro.product.cpu.abi | tr -d '\r')"

if [ "$SDK" != "29" ]; then
  die "Expected sdk=29, found sdk=${SDK}. Stop and verify package compatibility."
fi

if [ "$ABI" != "arm64-v8a" ]; then
  die "Expected abi=arm64-v8a, found abi=${ABI}. Stop and verify package compatibility."
fi

log "Preflight passed. Report: $REPORT_FILE"
