import os
import requests
import sys
import json
from datetime import datetime

# Load secrets from .env if available
def load_github_token():
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        return token

    # Check .env in root directory
    root_env = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), ".env")
    if os.path.exists(root_env):
        with open(root_env, "r") as f:
            for line in f:
                if line.startswith("GITHUB_TOKEN="):
                    return line.split("=", 1)[1].strip()
    return ""

GITHUB_TOKEN = load_github_token()
OWNER = "casacemal"
REPO = "Omoda5-launcher"
TAG_PREFIX = "v"

def get_version_code():
    try:
        with open("app/version.properties", "r") as f:
            for line in f:
                if "VERSION_CODE" in line:
                    return line.split("=")[1].strip()
    except Exception as e:
        print(f"Error reading version.properties: {e}")
        return None

def create_release(tag_name):
    # Check if release exists first
    check_url = f"https://api.github.com/repos/{OWNER}/{REPO}/releases/tags/{tag_name}"
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json"
    }
    resp = requests.get(check_url, headers=headers)
    if resp.status_code == 200:
        print(f"Release {tag_name} already exists. Using existing one.")
        return resp.json()["id"]

    url = f"https://api.github.com/repos/{OWNER}/{REPO}/releases"
    data = {
        "tag_name": tag_name,
        "name": f"Omoda Launcher {tag_name}",
        "body": f"Automated build from Omoda Assistant at {datetime.now().strftime('%Y-%m-%d %H:%M')}",
        "draft": True,
        "prerelease": False
    }
    response = requests.post(url, headers=headers, json=data)
    if response.status_code == 201:
        return response.json()["id"]
    else:
        print(f"Error creating release: {response.text}")
        return None

def upload_asset(release_id, file_path, asset_name):
    url = f"https://uploads.github.com/repos/{OWNER}/{REPO}/releases/{release_id}/assets?name={asset_name}"
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Content-Type": "application/vnd.android.package-archive"
    }
    with open(file_path, "rb") as f:
        response = requests.post(url, headers=headers, data=f)
    if response.status_code == 201:
        print(f"Successfully uploaded {asset_name}")
        return True
    else:
        print(f"Error uploading asset: {response.text}")
        return False

if __name__ == "__main__":
    v_code = get_version_code()
    if not v_code:
        sys.exit(1)
    
    tag = f"{TAG_PREFIX}{v_code}"
    apk_path = "app/build/outputs/apk/debug/app-debug.apk"
    
    if not os.path.exists(apk_path):
        print(f"APK not found at {apk_path}")
        sys.exit(1)
        
    print(f"Creating release {tag}...")
    release_id = create_release(tag)
    if release_id:
        upload_asset(release_id, apk_path, f"app-debug-v{v_code}.apk")
    else:
        # Try to find existing release if it failed because it exists
        sys.exit(1)
