#!/bin/bash
echo ">>> GitHub deposu tanımlanıyor..."
git remote set-url origin https://github.com/casacemal/Omoda5-launcher.git

echo ">>> Yeni kodlar pakete ekleniyor..."
git add .
git commit -m "v11.6.0: VHAL dumpsys line-split regex fix, added Left/Right Temp, Auto, Dual HVAC params, and updated Python VHAL test env"

echo ">>> GitHub'a yükleniyor..."
git push -u origin jetpack_componse

echo ">>> İŞLEM TAMAMLANDI! Kodlar GitHub'da güvende."
