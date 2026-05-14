#!/usr/bin/env python3
import subprocess
import os
from PIL import Image

ADB_DEVICE = "192.168.1.23:5555"
SCREENSHOT_PATH = "/sdcard/temp_screenshot.png"
LOCAL_SCREENSHOT = "/tmp/device_screenshot.png"
ICON_OUTPUT = "home_button_icon.png"
MARKDOWN_FILE = "home_button_reference.md"

SCREEN_WIDTH = 1920
SCREEN_HEIGHT = 720
NAVBAR_HEIGHT = 120
HOME_BTN_WIDTH = 120
HOME_BTN_HEIGHT = 120

def run_adb(cmd):
    result = subprocess.run(["adb", "-s", ADB_DEVICE] + cmd, capture_output=True)
    return result.returncode == 0

def capture_screenshot():
    if not run_adb(["shell", "screencap", "-p", SCREENSHOT_PATH]):
        raise RuntimeError("Failed to capture screenshot")
    if not run_adb(["pull", SCREENSHOT_PATH, LOCAL_SCREENSHOT]):
        raise RuntimeError("Failed to pull screenshot")
    run_adb(["shell", "rm", SCREENSHOT_PATH])
    print(f"Screenshot saved to {LOCAL_SCREENSHOT}")

def extract_home_button():
    img = Image.open(LOCAL_SCREENSHOT)
    
    home_btn_x = (SCREEN_WIDTH - HOME_BTN_WIDTH) // 2
    home_btn_y = SCREEN_HEIGHT - NAVBAR_HEIGHT + (NAVBAR_HEIGHT - HOME_BTN_HEIGHT) // 2
    
    home_icon = img.crop((
        home_btn_x, home_btn_y,
        home_btn_x + HOME_BTN_WIDTH, home_btn_y + HOME_BTN_HEIGHT
    ))
    
    home_icon.save(ICON_OUTPUT)
    print(f"Home button icon saved to {ICON_OUTPUT}")
    return ICON_OUTPUT

def create_markdown(image_path):
    abs_path = os.path.abspath(image_path)
    
    content = f"""# Home Button Icon

## Screenshot Location
Device: {ADB_DEVICE}

## Extracted Home Button Icon

![Home Button Icon]({abs_path})

## Technical Details
- **Source**: {LOCAL_SCREENSHOT}
- **Extracted Icon**: {image_path}
- **Icon Dimensions**: {HOME_BTN_WIDTH}x{HOME_BTN_HEIGHT} pixels
- **Capture Date**: {os.popen('date').read().strip()}
"""
    
    with open(MARKDOWN_FILE, 'w') as f:
        f.write(content)
    
    print(f"Markdown file created: {MARKDOWN_FILE}")

def main():
    print("Capturing screenshot from device...")
    capture_screenshot()
    
    print("Extracting Home button icon...")
    icon_path = extract_home_button()
    
    print("Creating Markdown reference...")
    create_markdown(icon_path)
    
    print("\nDone! Files:")
    print(f"  - Icon: {ICON_OUTPUT}")
    print(f"  - Markdown: {MARKDOWN_FILE}")

if __name__ == "__main__":
    main()