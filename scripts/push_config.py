import json
import os
import subprocess
import base64
import argparse

parser = argparse.ArgumentParser(description='Push config to OMODA5 launcher')
parser.add_argument('--ip', type=str, default='100.89.242.14:38131', help='ADB IP Address and Port')
args = parser.parse_args()

config_data = {
    "serverIp": "192.168.1.14",
    "mqttUrl": "192.168.1.14",
    "mqttPort": "1883",
    "bridgeServerIp": "192.168.1.14",
    "hermesPort": "8642",
    "sttPort": "20128",
    "ttsPort": "10201",
    "hermesApiKey": "cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34",
    "ninerouterApiKey": "sk-b6f4d3879cc4a442-vwd4xl-8ad79a58",
    "githubToken": "PLACEHOLDER_TOKEN",
    "edgeTtsToken": "",
    "mqttEnabled": True,
    "isSimulationMode": True
}

plain_text = json.dumps(config_data).encode('utf-8')
key = b"omoda4078"

encrypted = bytearray()
for i in range(len(plain_text)):
    encrypted.append(plain_text[i] ^ key[i % len(key)])

b64_encoded = base64.b64encode(encrypted).decode('utf-8')

tmp_file = "/tmp/app_config.json"
with open(tmp_file, "w") as f:
    f.write(b64_encoded)

adb_serial = args.ip
print(f"Pushing config to {adb_serial}...")
subprocess.run(["adb", "-s", adb_serial, "push", tmp_file, "/data/local/tmp/app_config.json"], check=True)
subprocess.run(["adb", "-s", adb_serial, "shell", "run-as", "com.omoda.lanc", "cp", "/data/local/tmp/app_config.json", "/data/data/com.omoda.lanc/files/app_config.json"], check=True)
subprocess.run(["adb", "-s", adb_serial, "shell", "am", "force-stop", "com.omoda.lanc"], check=True)
subprocess.run(["adb", "-s", adb_serial, "shell", "am", "start", "-n", "com.omoda.lanc/.MainActivity"], check=True)
print("Config pushed and app restarted successfully.")
