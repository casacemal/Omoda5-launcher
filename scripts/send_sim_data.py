import paho.mqtt.client as mqtt
import json
import time

broker = "192.168.1.14"
port = 1883
user = "mqtthome"
password = "4078"

client = mqtt.Client()
client.username_pw_set(user, password)

try:
    client.connect(broker, port, 60)
    print(f"Connected to broker {broker}")

    data_list = [
        {"propertyId": "0x11600207", "float": "120.5"},  # Speed
        {"propertyId": "0x11600305", "float": "3500.0"}, # RPM
        {"propertyId": "0x21402006", "int": "5"},       # Gear (D1)
        {"propertyId": "0x21401008", "int": "22"},      # AC Temp
    ]

    for data in data_list:
        payload = json.dumps(data)
        client.publish("omoda/simulate", payload)
        print(f"Sent: {payload}")
        time.sleep(0.5)

    client.disconnect()
    print("Done.")
except Exception as e:
    print(f"Error: {e}")
