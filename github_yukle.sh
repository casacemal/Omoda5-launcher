#!/bin/bash
echo ">>> GitHub deposu tanımlanıyor..."
git remote set-url origin https://github.com/casacemal/Omoda5-launcher.git

echo ">>> GitHub'daki eski geçmiş indiriliyor (Repo büyük, lütfen bekleyin)..."
git fetch origin jetpack_componse

echo ">>> Yerel klasör GitHub geçmişine bağlanıyor (Dosyalar silinmeyecek)..."
git symbolic-ref HEAD refs/heads/jetpack_componse
git reset --mixed origin/jetpack_componse

echo ">>> Yeni kodlar pakete ekleniyor..."
git add .
git commit -m "v11.5.0: Klima verisi parse hatası düzeltildi (split lines), Vosk Modeli eklendi"

echo ">>> GitHub'a yükleniyor..."
git push -u origin jetpack_componse

echo ">>> İŞLEM TAMAMLANDI! Geçmiş korundu."
