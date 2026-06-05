#!/bin/bash
echo "🧼 OMODA 5 - ORTAM TEMİZLİĞİ BAŞLIYOR..."

# 1. Takılı kalan Gradle işlemlerini öldür
./gradlew --stop
ps -ef | grep gradle | awk '{print $2}' | xargs kill -9 2>/dev/null

# 2. ADB Bağlantısını tazele
adb kill-server
adb start-server

# 3. Önbellekleri sil
rm -rf .gradle
rm -rf build/
rm -rf app/build/

echo "✅ ORTAM TERTEMİZ. ŞİMDİ DERLEME YAPILABİLİR."
