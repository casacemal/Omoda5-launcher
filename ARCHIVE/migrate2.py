import os

DEST_DIR = "/mnt/depo/launcher_v2/app/src/main/java/com/omoda5/demo"

for root, dirs, files in os.walk(DEST_DIR):
    for file in files:
        if file.endswith('.kt') or file.endswith('.xml'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            new_content = content.replace("com.omoda.universal.assistant", "com.omoda5.demo")
            
            if new_content != content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)

print("Second package update completed.")
