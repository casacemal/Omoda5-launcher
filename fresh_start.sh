#!/bin/bash
# OMODA 5 LAUNCHER - TAZE BAŞLATMA OTOMASYONU (v6.5.2)

SERIAL="emulator-5554"
APK_PATH="/media/cemal/depo/lancher proje/app/build/outputs/apk/debug/app-debugV6.5.2.apk"

echo "--- 🧼 TEMİZLİK BAŞLIYOR ---"
adb -s $SERIAL uninstall com.omoda5.launcher

echo "--- 📥 KURULUM ---"
adb -s $SERIAL install -r "$APK_PATH"

echo "--- 🔓 İZİNLER VERİLİYOR ---"
adb -s $SERIAL shell appops set com.omoda5.launcher SYSTEM_ALERT_WINDOW allow
adb -s $SERIAL shell appops set com.omoda5.launcher GET_USAGE_STATS allow
# Medya erişim izni
adb -s $SERIAL shell settings put secure enabled_notification_listeners com.omoda5.launcher/com.omoda5.launcher.services.CheryAccessibilityService:com.omoda5.launcher/com.omoda5.launcher.multitask.MultiTaskOverlayService

echo "--- 🚀 BAŞLATILIYOR ---"
adb -s $SERIAL shell am start -n com.omoda5.launcher/.ui.MainActivity

echo "--- ✅ TAMAMLANDI ---"
