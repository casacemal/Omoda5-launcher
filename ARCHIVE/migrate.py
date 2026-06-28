import os
import shutil
import glob

SRC_DIR = "/mnt/depo/launcher_v2/app/src/main/java/com/omoda/universal/assistant"
DEST_DIR = "/mnt/depo/launcher_v2/app/src/main/java/com/omoda5/demo"

# Move files to DEST_DIR
for root, dirs, files in os.walk(SRC_DIR):
    for file in files:
        if file.endswith('.kt'):
            src_file = os.path.join(root, file)
            # determine relative path
            rel_path = os.path.relpath(src_file, SRC_DIR)
            dest_file = os.path.join(DEST_DIR, rel_path)
            
            # Skip MainActivity from universal to keep demo's MainActivity
            if rel_path == "MainActivity.kt":
                continue
                
            os.makedirs(os.path.dirname(dest_file), exist_ok=True)
            shutil.copy2(src_file, dest_file)

# Now iterate through all .kt files in DEST_DIR and replace packages
for root, dirs, files in os.walk(DEST_DIR):
    for file in files:
        if file.endswith('.kt'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            new_content = content.replace("package com.omoda.universal.assistant", "package com.omoda5.demo")
            new_content = new_content.replace("import com.omoda.universal.assistant", "import com.omoda5.demo")
            
            if new_content != content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)

print("Migration and package update completed.")
