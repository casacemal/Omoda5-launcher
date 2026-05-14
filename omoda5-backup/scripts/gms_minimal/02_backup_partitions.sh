#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "${SCRIPT_DIR}/common.sh"

require_cmd adb
ensure_adb_device

SERIAL="$(get_serial)"
require_su "$SERIAL"

BACKUP_ROOT="${ROOT_DIR}/gms_minimal_backups/${TS}"
IMAGES_DIR="${BACKUP_ROOT}/images"
mkdir -p "$IMAGES_DIR"

DEVICE_DIR="/sdcard/gms_backup_${TS}"
adb_shell_s "$SERIAL" "mkdir -p ${DEVICE_DIR}"

resolve_block() {
  local part="$1"
  adb_shell_s "$SERIAL" "su -c '
for p in \
  /dev/block/by-name/${part} \
  /dev/block/bootdevice/by-name/${part} \
  /dev/block/platform/*/by-name/${part}
do
  if [ -e \"\$p\" ]; then
    echo \"\$p\"
    exit 0
  fi
done
exit 1
'" | tr -d '\r'
}

PARTS=(boot system vendor product)

log "Starting partition backup on ${SERIAL}"
for part in "${PARTS[@]}"; do
  block_path="$(resolve_block "$part" || true)"
  if [ -z "$block_path" ]; then
    die "Could not resolve block device for partition: ${part}"
  fi

  log "Backing up ${part} from ${block_path}"
  adb_shell_s "$SERIAL" "su -c 'dd if=${block_path} of=${DEVICE_DIR}/${part}.img bs=4M'"
  adb_s "$SERIAL" pull "${DEVICE_DIR}/${part}.img" "${IMAGES_DIR}/${part}.img" >/dev/null
done

adb_shell_s "$SERIAL" "su -c 'rm -rf ${DEVICE_DIR}'" || true

(
  cd "$IMAGES_DIR"
  sha256sum *.img > SHA256SUMS.txt
)

RESTORE_FASTBOOT="${BACKUP_ROOT}/restore_fastboot.sh"
cat > "$RESTORE_FASTBOOT" <<EOF
#!/usr/bin/env bash
set -euo pipefail
cd "\$(dirname "\$0")/images"
for p in boot system vendor product; do
  [ -f "\${p}.img" ] || { echo "Missing \${p}.img"; exit 1; }
done
sha256sum -c SHA256SUMS.txt
fastboot devices
fastboot flash boot boot.img
fastboot flash system system.img
fastboot flash vendor vendor.img
fastboot flash product product.img
fastboot reboot
EOF
chmod +x "$RESTORE_FASTBOOT"

cat > "${BACKUP_ROOT}/README_RESTORE.txt" <<EOF
Backup Timestamp: ${TS}
Serial: ${SERIAL}

Restore order:
1) Boot device into bootloader/fastboot mode.
2) Run: ./restore_fastboot.sh
3) Wait for reboot and verify boot completion.

If fastboot is unavailable on host, install Android platform-tools first.
EOF

log "Backup complete: ${BACKUP_ROOT}"
