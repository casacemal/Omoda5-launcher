import subprocess
import curses
import re
import threading
import time
import sys

# Omoda 5 VHAL Monitor Pro (TUI Edition)
# Version: v2.0.1
# Author: AI Assistant
# Features: Interactive Menu, Raw/Resolved Switch, Multi-Category Tables

# --- CONFIGURATION ---
ADB_LOGCAT = ["adb", "shell", "logcat", "-v", "time"]
ADB_DUMPSYS = ["adb", "shell", "while true; do dumpsys car_service --vhal; sleep 1; done"]

# Regex patterns
FLOAT_REGEX = re.compile(r"floatValues: \[([\d.,\s-]+)\]")
INT32_REGEX = re.compile(r"int32Values: \[([\d.,\s-]+)\]")
PROP_REGEX = re.compile(r"Property: (0x[0-9a-fA-F]+)")

# New OEM Specific Patterns (from Chery logs & Backup Analysis)
KEY_CODE_REGEX = re.compile(r"keyCode:(\d+)")
HARDKEY_EVENT_REGEX = re.compile(r"hardkey event keyCode (\d+)")
DBUS_MSG_REGEX = re.compile(r"dbus msg .*: (.*)")

# Chery/Omoda 5 Specific VHAL Dictionary (0x21 Series & Global)
CHERY_VHAL_MAP = {
    "0x21401002": ("CLIMATE", "FAN_HIZI"),
    "0x21401010": ("CLIMATE", "SOL_ISI"),
    "0x21401011": ("CLIMATE", "SAG_ISI"),
    "0x21601037": ("CLIMATE", "KOLTUK_ISITMA"),
    "0x21403021": ("SYSTEM", "ANAHTAR"),
    "0x2170302d": ("VEHICLE", "KADRAN_HIZI"),
    "0x2170c000": ("VEHICLE", "SURUS_MODU"),
    "0x21402006": ("SYSTEM", "AVM_360"),
    "0x16400b01": ("BODY", "KAPI_DURUMU") # AreaID based
}

# Global State
current_mode = "MENU"
active_command = ADB_LOGCAT
raw_logs = []
resolved_data = {
    "SENSORS": {"HIZ": "0.0 km/h", "RPM": "0", "YAKIT": "0.0 L", "VOLTAJ": "14.2V"},
    "CLIMATE": {"SOL_ISI": "22.0 C", "SAG_ISI": "22.0 C", "FAN": "OFF", "KOLTUK": "OFF"},
    "BODY/KAPI": {"SOL_ON": "KAPALI", "SAG_ON": "KAPALI", "ARKA_SOL": "KAPALI", "ARKA_SAG": "KAPALI", "BAGAJ": "KAPALI"},
    "VEHICLE": {"VITES": "P", "MOD": "NORMAL", "EL_FRENI": "ON"}
}

line_buffer = ""

def parse_line(incoming_line):
    global line_buffer
    
    # Support for JSON logcat format
    if '"message":' in incoming_line:
        msg_match = re.search(r'"message":\s*"(.*)"', incoming_line)
        if msg_match: incoming_line = msg_match.group(1)

    lTrim = incoming_line.strip()
    if not lTrim: return

    if lTrim.startswith("Property:"):
        line_buffer = ""
    
    line_buffer += lTrim + " "
    
    if "string:" not in line_buffer:
        return # Devam ediyor
        
    line = line_buffer
    line_buffer = ""

    # Extract AreaID if present (Format: Property: 0x..., area: 1, ...)
    area_match = re.search(r"area:\s*(\d+)", line)
    area_id = int(area_match.group(1)) if area_match else 0

    # 1. Standard & OEM VHAL Properties
    prop_match = PROP_REGEX.search(line)
    if prop_match:
        prop_id = prop_match.group(1).lower()
        value_str = ""
        f_match = FLOAT_REGEX.search(line)
        i_match = INT32_REGEX.search(line)
        
        if f_match and f_match.group(1).strip():
            value_str = f_match.group(1).strip()
        elif i_match and i_match.group(1).strip():
            value_str = i_match.group(1).strip()
            
        if value_str:
            try:
                # --- DOOR LOGIC (AreaID Mapping) ---
                if "0x16400b01" in prop_id:
                    status = "AÇIK" if value_str == "1" else "KAPALI"
                    if area_id == 1: resolved_data["BODY/KAPI"]["SOL_ON"] = status
                    elif area_id == 4: resolved_data["BODY/KAPI"]["SAG_ON"] = status
                    elif area_id == 16: resolved_data["BODY/KAPI"]["ARKA_SOL"] = status
                    elif area_id == 64: resolved_data["BODY/KAPI"]["ARKA_SAG"] = status
                    elif area_id == 536870912: resolved_data["BODY/KAPI"]["BAGAJ"] = status

                # --- Standard API 29 IDs ---
                elif "0x11600207" in prop_id:
                    val = float(value_str) * 3.6
                    resolved_data["SENSORS"]["HIZ"] = f"{val:.1f} km/h"
                elif "0x11600305" in prop_id: # RPM
                    resolved_data["SENSORS"]["RPM"] = value_str
                elif "0x11600307" in prop_id: # FUEL
                    val = float(value_str) / 1000.0
                    resolved_data["SENSORS"]["YAKIT"] = f"{val:.1f} L"
                elif "0x11400400" in prop_id: # GEAR
                    gears = {"1": "N", "2": "R", "4": "P", "8": "D"}
                    resolved_data["VEHICLE"]["VITES"] = gears.get(value_str, value_str)

                # --- Chery OEM 0x21 Series ---
                if prop_id in CHERY_VHAL_MAP:
                    group, label = CHERY_VHAL_MAP[prop_id]
                    if label == "FAN_HIZI": resolved_data["CLIMATE"]["FAN"] = value_str
                    elif label == "SOL_SICAKLIK": resolved_data["CLIMATE"]["SOL_ISI"] = f"{value_str} C"
                    elif label == "SAG_SICAKLIK": resolved_data["CLIMATE"]["SAG_ISI"] = f"{value_str} C"
                    elif label == "SURUS_MODU":
                        mods = {"1": "ECO", "2": "NORMAL", "3": "SPORT"}
                        resolved_data["VEHICLE"]["MOD"] = mods.get(value_str, value_str)
                    elif label == "KADRAN_HIZI": resolved_data["SENSORS"]["HIZ"] = f"{value_str} km/h"
            except: pass

    # 2. OEM Hardkey Events (keyCode: 289 etc)
    key_match = KEY_CODE_REGEX.search(line) or HARDKEY_EVENT_REGEX.search(line)
    if key_match:
        code = key_match.group(1)
        # Map known codes if possible
        key_names = {"289": "VOL_UP", "290": "VOL_DOWN", "294": "HOME/SRC"}
        resolved_data["KEYS"]["LAST_KEY"] = key_names.get(code, f"CODE_{code}")
        resolved_data["KEYS"]["ACTION"] = "DOWN" if "true" in line.lower() or "down" in line.lower() else "UP"

    # 3. DBUS messages (Raw Sniffing)
    dbus_match = DBUS_MSG_REGEX.search(line)
    if dbus_match:
        resolved_data["VEHICLE"]["KAPI"] = "DBUS DATA..." # Placeholder for now

def adb_worker():
    while True:
        process = subprocess.Popen(active_command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        for line in iter(process.stdout.readline, ""):
            line = line.strip()
            if line:
                raw_logs.append(line)
                if len(raw_logs) > 200: raw_logs.pop(0)
                parse_line(line)
        time.sleep(1)

def draw_menu(stdscr):
    h, w = stdscr.getmaxyx()
    stdscr.attron(curses.color_pair(2))
    stdscr.addstr(2, (w//2)-15, " OMODA 5 VHAL DEBUGGER PRO v2.0 ", curses.A_BOLD)
    stdscr.attroff(curses.color_pair(2))
    
    options = [
        "1. CANLI MONITOR (Bölünmüş Ekran)",
        "2. SADECE HAM VERİ (Logcat)",
        "3. SADECE ÇÖZÜLMÜŞ VERİ (Dashboard)",
        "4. DUMPSYS MODUNA GEÇ (VHAL Snapshot)",
        "Q. ÇIKIŞ"
    ]
    
    for i, opt in enumerate(options):
        stdscr.addstr(5 + i*2, (w//2)-15, opt)

def draw_table(stdscr, title, data_dict, y, x, w):
    stdscr.attron(curses.color_pair(3) | curses.A_BOLD)
    stdscr.addstr(y, x, f" {title.center(w-2)} ")
    stdscr.attroff(curses.color_pair(3) | curses.A_BOLD)
    
    curr_y = y + 1
    for k, v in data_dict.items():
        stdscr.addstr(curr_y, x, f"│ {k.ljust(10)}: {str(v).ljust(w-15)} │")
        curr_y += 1
    stdscr.addstr(curr_y, x, "└" + "─"*(w-2) + "┘")
    return curr_y + 1

def main(stdscr):
    global current_mode, active_command
    curses.start_color()
    curses.init_pair(1, curses.COLOR_GREEN, curses.COLOR_BLACK) # Normal
    curses.init_pair(2, curses.COLOR_BLACK, curses.COLOR_GREEN) # Highlight
    curses.init_pair(3, curses.COLOR_CYAN, curses.COLOR_BLACK)  # Header
    curses.curs_set(0)
    stdscr.nodelay(True)

    t = threading.Thread(target=adb_worker, daemon=True)
    t.start()

    while True:
        stdscr.clear()
        h, w = stdscr.getmaxyx()
        
        if current_mode == "MENU":
            draw_menu(stdscr)
        
        elif current_mode == "MONITOR":
            mid_x = w // 2
            # Left: Raw
            stdscr.addstr(0, 0, " HAM VERİ AKIŞI ", curses.color_pair(2))
            for i, line in enumerate(raw_logs[-(h-2):]):
                try: stdscr.addstr(i+1, 0, line[:mid_x-2], curses.color_pair(1))
                except: pass
            # Right: Tables
            curr_y = 1
            curr_y = draw_table(stdscr, "MOTOR & SENSÖR", resolved_data["SENSORS"], curr_y, mid_x+2, mid_x-4)
            curr_y = draw_table(stdscr, "İKLİMLENDİRME", resolved_data["CLIMATE"], curr_y, mid_x+2, mid_x-4)
            curr_y = draw_table(stdscr, "ARAÇ DURUMU", resolved_data["VEHICLE"], curr_y, mid_x+2, mid_x-4)

        elif current_mode == "RAW_ONLY":
            stdscr.addstr(0, 0, " FULL RAW LOGCAT VIEW (Geri için 'M' tuşuna bas) ", curses.color_pair(2))
            for i, line in enumerate(raw_logs[-(h-2):]):
                try: stdscr.addstr(i+1, 0, line[:w-2], curses.color_pair(1))
                except: pass

        elif current_mode == "RESOLVED_ONLY":
            stdscr.addstr(0, 0, " ÇÖZÜLMÜŞ VERİ TABLOSU (Full Dashboard) ", curses.color_pair(2))
            cols = 2
            col_w = w // cols
            draw_table(stdscr, "MOTOR & SENSÖR", resolved_data["SENSORS"], 2, 2, col_w-4)
            draw_table(stdscr, "İKLİMLENDİRME", resolved_data["CLIMATE"], 2, col_w+2, col_w-4)
            draw_table(stdscr, "KAPI DURUMLARI", resolved_data["BODY/KAPI"], 10, 2, col_w-4)
            draw_table(stdscr, "ARAÇ DURUMU", resolved_data["VEHICLE"], 10, col_w+2, col_w-4)

        stdscr.refresh()
        
        try:
            key = stdscr.getkey().upper()
            if key == '1': current_mode = "MONITOR"
            elif key == '2': current_mode = "RAW_ONLY"
            elif key == '3': current_mode = "RESOLVED_ONLY"
            elif key == '4': 
                active_command = ADB_DUMPSYS
                raw_logs.append(">>> MOD DEĞİŞTİRİLDİ: DUMPSYS <<<")
            elif key == 'M': current_mode = "MENU"
            elif key == 'Q': break
        except: pass
        time.sleep(0.1)

if __name__ == "__main__":
    curses.wrapper(main)
