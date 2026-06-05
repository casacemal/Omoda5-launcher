import curses
import threading
import time
import subprocess
import re
import importlib.util
import os

# Omoda 5 VHAL Lab Pro - Version 3.0 (Master Control)
# Features: IP Connect, Remote Backup (Cerence/CarService), Hot-Reload, Lab UI

LOGIC_FILE = os.path.join(os.path.dirname(__file__), "vhal_monitor_pro.py")
BACKUP_DIR = os.path.join(os.path.dirname(__file__), "backup")

class VhalLab:
    def __init__(self):
        self.simulator_active = False
        self.adb_active = False
        self.target_ip = "192.168.1.100" # Default
        self.raw_logs = []
        self.resolved_data = {}
        self.last_logic_mtime = 0
        self.parse_function = None
        self.running = True
        self.status_msg = "Sistem Hazır - IP Girin"
        self.input_mode = False

    def adb_connect(self):
        self.status_msg = f"Bağlanıyor: {self.target_ip}..."
        try:
            res = subprocess.run(["adb", "connect", self.target_ip], capture_output=True, text=True)
            if "connected" in res.stdout:
                self.status_msg = f"BAĞLANDI: {self.target_ip}"
                self.adb_active = True
            else:
                self.status_msg = "BAĞLANTI HATASI"
        except: self.status_msg = "ADB ÇALIŞTIRILAMADI"

    def backup_system_files(self):
        if not self.adb_active:
            self.status_msg = "HATA: Önce ADB Bağlanın"
            return
        
        if not os.path.exists(BACKUP_DIR): os.makedirs(BACKUP_DIR)
        self.status_msg = "Dosyalar taranıyor (Cerence, CarService...)"
        
        # Search patterns
        patterns = ["CarService.apk", "android.car.jar", "*chery*.apk", "*yfve*.apk", "*cerence*.apk"]
        find_cmd = f"find /system /vendor -name '{patterns[0]}'"
        for p in patterns[1:]: find_cmd += f" -o -name '{p}'"
        
        try:
            res = subprocess.run(["adb", "shell", find_cmd], capture_output=True, text=True)
            files = res.stdout.splitlines()
            count = 0
            for remote_path in files:
                if not remote_path.strip(): continue
                file_name = os.path.basename(remote_path)
                self.status_msg = f"Kopyalanıyor: {file_name}"
                subprocess.run(["adb", "pull", remote_path, os.path.join(BACKUP_DIR, file_name)])
                count += 1
            self.status_msg = f"TAMAMLANDI: {count} dosya yedeklendi."
        except: self.status_msg = "YEDEKLEME SIRASINDA HATA"

    def reload_logic(self):
        try:
            if not os.path.exists(LOGIC_FILE): return
            mtime = os.path.getmtime(LOGIC_FILE)
            if mtime > self.last_logic_mtime:
                spec = importlib.util.spec_from_file_location("logic", LOGIC_FILE)
                module = importlib.util.module_from_spec(spec)
                spec.loader.exec_module(module)
                self.parse_function = module.parse_line
                self.resolved_data = module.resolved_data
                self.last_logic_mtime = mtime
                self.status_msg = f"MANTIK GÜNCELLENDİ: {time.strftime('%H:%M:%S')}"
        except Exception as e: self.status_msg = f"RELOAD HATASI: {str(e)[:20]}"

    def adb_streamer(self):
        while self.running:
            if self.adb_active:
                process = subprocess.Popen(["adb", "shell", "logcat", "-v", "time"], 
                                         stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
                for line in iter(process.stdout.readline, ""):
                    if not self.adb_active or not self.running: break
                    line = line.strip()
                    if line:
                        self.raw_logs.append(line)
                        if len(self.raw_logs) > 50: self.raw_logs.pop(0)
                        if self.parse_function:
                            try: self.parse_function(line)
                            except: pass
                process.terminate()
            time.sleep(1)

def draw_box(stdscr, y, x, h, w, title):
    stdscr.attron(curses.color_pair(3))
    try:
        for i in range(x, x + w):
            stdscr.addch(y, i, curses.ACS_HLINE); stdscr.addch(y + h, i, curses.ACS_HLINE)
        for i in range(y, y + h):
            stdscr.addch(i, x, curses.ACS_VLINE); stdscr.addch(i, x + w, curses.ACS_VLINE)
        stdscr.addch(y, x, curses.ACS_ULCORNER); stdscr.addch(y, x + w, curses.ACS_URCORNER)
        stdscr.addch(y + h, x, curses.ACS_LLCORNER); stdscr.addch(y + h, x + w, curses.ACS_LRCORNER)
        stdscr.addstr(y, x + 2, f" {title} ")
    except: pass
    stdscr.attroff(curses.color_pair(3))

def main(stdscr):
    lab = VhalLab()
    curses.start_color()
    curses.init_pair(1, curses.COLOR_GREEN, curses.COLOR_BLACK) # Matrix
    curses.init_pair(2, curses.COLOR_BLACK, curses.COLOR_GREEN) # Highlight
    curses.init_pair(3, curses.COLOR_CYAN, curses.COLOR_BLACK)  # Borders
    curses.init_pair(4, curses.COLOR_RED, curses.COLOR_BLACK)   # Alert
    stdscr.nodelay(True); curses.curs_set(0)

    threading.Thread(target=lab.adb_streamer, daemon=True).start()

    while True:
        lab.reload_logic()
        stdscr.clear(); h, w = stdscr.getmaxyx(); mid_x = w // 2

        # 1. TOP BAR - IP & Status
        stdscr.attron(curses.color_pair(2))
        stdscr.addstr(0, 0, " OMODA 5 LAB PRO v3.0 ".center(w))
        stdscr.attroff(curses.color_pair(2))

        ip_disp = f" IP: {lab.target_ip} " + ("[YAZIYOR]" if lab.input_mode else "[F1: Değiştir]")
        stdscr.addstr(1, 2, ip_disp, curses.color_pair(3))
        stdscr.addstr(1, 35, f"BAĞLANTI: {'AÇIK' if lab.adb_active else 'KAPALI'}", curses.color_pair(1 if lab.adb_active else 4))
        stdscr.addstr(1, 60, f"DURUM: {lab.status_msg[:w-65]}", curses.color_pair(1))

        # 2. PANELS
        draw_box(stdscr, 2, 0, h-4, mid_x-1, "HAM LOG AKIŞI")
        for i, log in enumerate(lab.raw_logs[-(h-7):]):
            try: stdscr.addstr(3 + i, 2, log[:mid_x-5], curses.color_pair(1))
            except: pass

        draw_box(stdscr, 2, mid_x, h-4, mid_x-1, "ÇÖZÜLMÜŞ ANALİZ (TABLO)")
        if lab.resolved_data:
            curr_y = 4
            for cat, values in lab.resolved_data.items():
                if curr_y >= h - 5: break
                try:
                    stdscr.addstr(curr_y, mid_x + 2, f"> {cat}", curses.A_BOLD | curses.color_pair(3))
                    curr_y += 1
                    for k, v in values.items():
                        if curr_y >= h - 5: break
                        stdscr.addstr(curr_y, mid_x + 4, f"{k.ljust(12)} | {str(v)[:mid_x-20]}")
                        curr_y += 1
                    curr_y += 1
                except: pass

        # 3. BOTTOM BAR
        stdscr.addstr(h-1, 0, " F1: IP GİR | F2: BAĞLAN | F4: YEDEKLE (APK/JAR) | Q: ÇIKIŞ ".center(w), curses.color_pair(2))
        stdscr.refresh()

        key = stdscr.getch()
        if key == ord('q') or key == ord('Q'): break
        elif key == curses.KEY_F1:
            lab.input_mode = True
            lab.target_ip = ""
        elif key == curses.KEY_F2: lab.adb_connect()
        elif key == curses.KEY_F4: threading.Thread(target=lab.backup_system_files, daemon=True).start()
        
        if lab.input_mode:
            if key == 10: # ENTER
                lab.input_mode = False
                if not lab.target_ip: lab.target_ip = "127.0.0.1"
            elif 48 <= key <= 57 or key == ord('.'): # Numbers and dot
                lab.target_ip += chr(key)
            elif key == 263: # Backspace
                lab.target_ip = lab.target_ip[:-1]

        time.sleep(0.05)

if __name__ == "__main__":
    curses.wrapper(main)
