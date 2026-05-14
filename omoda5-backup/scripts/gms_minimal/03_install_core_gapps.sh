#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "${SCRIPT_DIR}/common.sh"

require_cmd adb
ensure_adb_device

SERIAL="$(get_serial)"
ZIP_PATH="${1:-}"
MODE="${2:-push}"

[ -n "$ZIP_PATH" ] || die "Usage: $0 <path-to-core-gapps-zip> [push|sideload]"
[ -f "$ZIP_PATH" ] || die "Zip not found: $ZIP_PATH"

ZIP_NAME="$(basename "$ZIP_PATH")"

case "$MODE" in
  push)
    log "Pushing ${ZIP_NAME} to /sdcard on ${SERIAL}"
    adb_s "$SERIAL" push "$ZIP_PATH" "/sdcard/${ZIP_NAME}" >/dev/null
    cat <<EOF
Zip pushed successfully.

Next steps (manual):
1) Reboot recovery:
   adb -s ${SERIAL} reboot recovery
2) In recovery, install:
   /sdcard/${ZIP_NAME}
3) Wipe only Dalvik/Cache if recovery suggests it.
4) Reboot system.
EOF
    ;;
  sideload)
    log "Rebooting ${SERIAL} to recovery for sideload"
    adb_s "$SERIAL" reboot recovery
    cat <<EOF
On device recovery screen:
1) Select "Apply update" / "ADB sideload"
2) Then run the command below on host:

   adb sideload ${ZIP_PATH}

After sideload:
- Wipe only Dalvik/Cache if prompted.
- Reboot system.
EOF
    ;;
  *)
    die "Invalid mode: ${MODE}. Use push or sideload."
    ;;
esac
