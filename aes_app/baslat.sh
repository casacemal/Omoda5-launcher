#!/bin/bash
cd "$(dirname "$0")"

echo "VHAL AES için kütüphaneler kontrol ediliyor..."
pip3 install customtkinter paho-mqtt --quiet

echo "Uygulama başlatılıyor..."
python3 main.py
