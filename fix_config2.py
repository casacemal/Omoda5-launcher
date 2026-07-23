import json
import base64
import os
import subprocess
import argparse

# Load secrets from .env if available
def load_env():
    env = {}
    # Look for .env in current dir or script dir
    script_dir = os.path.dirname(os.path.abspath(__file__))
    paths = [".env", os.path.join(script_dir, ".env")]

    for path in paths:
        if os.path.exists(path):
            with open(path, "r") as f:
                for line in f:
                    if "=" in line and not line.startswith("#"):
                        key, val = line.strip().split("=", 1)
                        env[key] = val
            break
    return env

env = load_env()

# Config verilerini tanımla (AppConfig.kt ile tam uyumlu)
config = {
    "serverIp": "192.168.1.14",
    "hermesPort": "8642",
    "sttPort": "20128",
    "ttsPort": "20128",
    "bridgeServerIp": "192.168.1.14",
    "bridgeType": "WYOMING",
    "sttMode": "HERMES",
    "ttsEngine": "9ROUTER",
    "useHermesSpeech": True,
    "isContinuousConversation": True,
    "isWakeWordEnabled": True,
    "micSource": "MIC",
    "useHermesDecision": False,
    "isAutoTasksEnabled": True,
    "isBridgeMode": False,
    "isSimulationMode": False,
    "mqttEnabled": True,
    "mqttUrl": "192.168.1.14",
    "mqttPort": "1883",
    "vehiclePollingConfig": {},
    "vehicleId": "OMODA5_T19C_001",
    "sessionKey": "user:ahmet:master_profile",
    "githubToken": env.get("GITHUB_TOKEN", ""),
    "hermesApiKey": env.get("HERMES_API_KEY", ""),
    "ninerouterApiKey": env.get("NINEROUTER_API_KEY", ""),
    "edgeTtsToken": env.get("EDGE_TTS_TOKEN", ""),
    "wallpaperIdx": 0,
    "appClickCounts": {},
    "vadSnrRatio": 1.6,
    "vadSilenceDuration": 2000,
    "vadGainFactor": 2.5,
    "isKlimaAutoEnable": True,
    "ttsRate": 1.0,
    "ttsPitch": 1.0
}

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", help="Cihaz IP veya Serial", required=True)
    args = parser.parse_args()

    # JSON verisini UTF-8 baytlarına çevir
    json_bytes = json.dumps(config).encode('utf-8')

    # XOR Şifreleme (ConfigManager.kt ile aynı mantık)
    key = b"omoda4078"
    encrypted_bytes = bytearray()
    for i in range(len(json_bytes)):
        encrypted_bytes.append(json_bytes[i] ^ key[i % len(key)])

    # Base64 encode
    final_b64 = base64.b64encode(encrypted_bytes).decode('utf-8')

    temp_file = "app_config.json"
    with open(temp_file, "w") as f:
        f.write(final_b64)

    print(f"Config hazırlandı ({len(json_bytes)} byte)")

    device = args.ip
    remote_tmp = "/data/local/tmp/app_config.json"
    remote_dest = "/data/data/com.omoda.lanc/files/app_config.json"

    try:
        print(f"Cihaza ({device}) gönderiliyor...")
        subprocess.run(["adb", "-s", device, "push", temp_file, remote_tmp], check=True)

        # run-as dene
        result = subprocess.run(["adb", "-s", device, "shell", "run-as", "com.omoda.lanc", "cp", remote_tmp, remote_dest])

        if result.returncode != 0:
            print("run-as başarısız, direkt kopyalama (root) deneniyor...")
            subprocess.run(["adb", "-s", device, "shell", "cp", remote_tmp, remote_dest], check=True)
            subprocess.run(["adb", "-s", device, "shell", "chmod", "666", remote_dest], check=True)

        # Uygulamayı yeniden başlat
        subprocess.run(["adb", "-s", device, "shell", "am", "force-stop", "com.omoda.lanc"], check=True)
        subprocess.run(["adb", "-s", device, "shell", "am", "start", "-n", "com.omoda.lanc/com.omoda.lanc.MainActivity"], check=True)
        print("\nBAŞARILI: Config güncellendi ve uygulama başlatıldı.")

    except Exception as e:
        print(f"\nHATA: {e}")
    finally:
        if os.path.exists(temp_file):
            os.remove(temp_file)

if __name__ == "__main__":
    main()
