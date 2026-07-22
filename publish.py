import requests, os
token = os.environ.get("GITHUB_TOKEN")
if not token:
    with open(".env") as f:
        for line in f:
            if line.startswith("GITHUB_TOKEN="): token = line.strip().split("=")[1]
h = {"Authorization": f"token {token}", "Accept": "application/vnd.github.v3+json"}
r = requests.get("https://api.github.com/repos/casacemal/Omoda5-launcher/releases", headers=h)
for rel in r.json():
    if rel["tag_name"] == "v6397" and rel["draft"]:
        requests.patch(rel["url"], headers=h, json={"draft": False})
        print(f"Published release {rel['id']}")
