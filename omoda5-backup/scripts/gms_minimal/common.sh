#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"
TS="${TS:-$(date +%Y%m%d_%H%M%S)}"

log() {
  printf '[%s] %s\n' "$(date +%F' '%T)" "$*"
}

die() {
  printf 'ERROR: %s\n' "$*" >&2
  exit 1
}

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}

ensure_adb_device() {
  local out
  out="$(adb devices | awk 'NR>1 && $2=="device"{print $1}')"
  [ -n "$out" ] || die "No ADB device in 'device' state. Connect device and enable USB debugging."
}

get_serial() {
  if [ -n "${ANDROID_SERIAL:-}" ]; then
    printf '%s' "$ANDROID_SERIAL"
    return
  fi
  adb devices | awk 'NR>1 && $2=="device"{print $1; exit}'
}

adb_s() {
  local serial="$1"
  shift
  adb -s "$serial" "$@"
}

adb_shell_s() {
  local serial="$1"
  shift
  adb -s "$serial" shell "$@"
}

require_su() {
  local serial="$1"
  adb_shell_s "$serial" "su -c 'id -u'" >/dev/null 2>&1 || die "su access not available on device $serial"
}

mk_report_dir() {
  local dir="${ROOT_DIR}/gms_minimal_reports"
  mkdir -p "$dir"
  printf '%s' "$dir"
}
