import requests, os
token = os.environ.get("GITHUB_TOKEN")
if not token:
    with open(".env") as f:
        for line in f:
            if line.startswith("GITHUB_TOKEN="): token = line.strip().split("=")[1]
h = {"Authorization": f"token {token}", "Accept": "application/vnd.github.v3+json"}
r = requests.get("https://api.github.com/repos/casacemal/Omoda5-launcher/releases", headers=h)
for rel in r.json():
    if rel["tag_name"] == "v6399":
        requests.delete(rel["url"], headers=h)
        print(f"Deleted release {rel['id']}")
        requests.delete(f"https://api.github.com/repos/casacemal/Omoda5-launcher/git/refs/tags/v6399", headers=h)
        print("Deleted tag v6399")
