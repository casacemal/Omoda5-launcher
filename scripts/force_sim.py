from push_config import encrypt
import json
import base64

config = {
    "isSimulationMode": True,
    "isBridgeMode": True
}
json_str = json.dumps(config)
encrypted = encrypt(json_str)

with open("sim_config.txt", "w") as f:
    f.write(encrypted)
