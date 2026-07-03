#!/usr/bin/env python3

import subprocess
import sys

def check_bridge_http():
    try:
        result = subprocess.run(
            ["curl", "-s", "http://localhost:5000/v1/models"],
            capture_output=True, text=True, timeout=5
        )
        if result.returncode == 0:
            print("\u2705 HTTP /v1/models: OK")
            return True
        else:
            print(f"\u274c HTTP /v1/models: HTTP {result.returncode}")
            return False
    except Exception as e:
        print(f"\u274c HTTP /v1/models: {e}")
        return False

if __name__ == "__main__":
    check_bridge_http()