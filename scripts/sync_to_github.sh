#!/bin/bash
# Omoda Launcher v2 - Güvenli GitHub Senkronizasyon Scripti

echo "==> Gereksiz dosyalar temizleniyor..."
rm -f app_config.json
rm -rf app/build core/build network/build voice-offline/build

echo "==> Değişiklikler ekleniyor (Secret'lar hariç)..."
git add .

echo "==> Mevcut durum taahhüt ediliyor..."
git commit -m "Auto-sync: $(date '+%d.%m.%Y %H:%M') - Güvenlik ve stabilite güncellemeleri"

echo "==> GitHub'a gönderiliyor (Origin: casacemal/Omoda5-launcher)..."
git push origin Hermes-bridge

echo "==> Başarılı! Proje GitHub'a yüklendi."
