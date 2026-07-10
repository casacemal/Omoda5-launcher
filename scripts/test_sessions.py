import requests
import json

SERVER_IP = "192.168.1.14"
PORT = "8642"
BASE_URL = f"http://{SERVER_IP}:{PORT}/api"
API_KEY = "cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"

def test_list_sessions():
    print(f"\n--- Testing GET {BASE_URL}/sessions ---")
    headers = {"Authorization": f"Bearer {API_KEY}"}
    try:
        response = requests.get(f"{BASE_URL}/sessions", headers=headers, timeout=10)
        print(f"Status: {response.status_code}")
        print(f"Response: {response.text}")
    except Exception as e:
        print(f"Error: {e}")

def test_create_session():
    print(f"\n--- Testing POST {BASE_URL}/sessions ---")
    headers = {"Authorization": f"Bearer {API_KEY}", "Content-Type": "application/json"}
    payload = {"name": "Android Launcher Session"}
    try:
        response = requests.post(f"{BASE_URL}/sessions", headers=headers, json=payload, timeout=10)
        print(f"Status: {response.status_code}")
        print(f"Response: {response.text}")
    except Exception as e:
        print(f"Error: {e}")

def test_session_chat_stream(session_id):
    print(f"\n--- Testing POST {BASE_URL}/sessions/{session_id}/chat/stream ---")
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json"
    }
    payload = {
        "message": "Nasılsın?",
        "stream": True
    }
    try:
        response = requests.post(f"{BASE_URL}/sessions/{session_id}/chat/stream", headers=headers, json=payload, stream=True, timeout=15)
        print(f"Status: {response.status_code}")
        if response.status_code == 200:
            for line in response.iter_lines():
                if line:
                    decoded = line.decode('utf-8')
                    print(f"Stream: {decoded}")
                    # stop after some tokens
                    if "data: {" in decoded and "content" in decoded:
                        pass
        else:
            print(f"Response: {response.text}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    test_list_sessions()
    # Let's create a session first to test stream
    headers = {"Authorization": f"Bearer {API_KEY}", "Content-Type": "application/json"}
    payload = {"name": "Test Session"}
    res = requests.post(f"{BASE_URL}/sessions", headers=headers, json=payload)
    if res.status_code == 201:
        session_id = res.json()["session"]["id"]
        test_session_chat_stream(session_id)
